#> api:check_overflow/test/multi
#
# 最終的にこれを参考にしてステータスの計算をすることにする

# 例えば1234.5dmgを167.8%増加させたい時
# そのまま掛けるとスコアボードの上限に引っかかってあれなのでこんな感じにする


# 123450 x 1
# 12345 x 6
# 1234 x 5
# 123 x 4
# 合計して207142→207142/100で2071.42に

# これをスコアボードで実装するには

# dmgを100倍した値をスコアボードに
# %倍率をそれぞれ分割して代入する

# また%倍率は起点の100%の場合はそのままかけるが、それより高い場合は高い桁数分dmgをx10、低い場合は低い桁数分dmgをx0.1する


# テストケース
# dmgを1234.5、増加率を167.8%とする

# 入力値は9999999.9まで
# 出力値は9999999.99まで

# ここでの%補正はベース値の100%を足しているものとする
data modify storage tusb_ad:api test_dmg set value 1000000.0f
data modify storage tusb_ad:api test_rate set value 999999.0f
scoreboard players set $total_dmg temp 0

# dmgを10倍してスコアボードに
execute store result score $dmg temp run data get storage tusb_ad:api test_dmg 10
# コピー作成
scoreboard players operation $temp_dmg temp = $dmg temp

# %は10倍でスコアボードに入れ、数値的上限である8桁から%を割っていき、1以上の場合はその桁が有効であるため、
# 割り算してその桁を抜き出す、抜き出してかけて計算したらその要素を削除し、次もその桁分で割ればよいかと。

# まずは仮代入(同じく10倍)
execute store result score $rate temp run data get storage tusb_ad:api test_rate 10

# コピー作成
scoreboard players operation $temp_rate temp = $rate temp

# その後再帰関数にはいって桁数を特定する?
# 下記関数は$digitと$rateをリセットしてないのでリセットする必要あり
function api:stat/calc/percentage/get_digit

# 中身をもとに戻す
scoreboard players operation $temp_rate temp = $rate temp

# 桁数が特定できたのでかける数を特定(10^桁数-3と10^桁数それぞれ)
function api:stat/calc/percentage/digit_to_multi/multi_by_digit
function api:stat/calc/percentage/digit_to_multi/multi_by_digit_3

# temp_digit_3リセット
scoreboard players reset $temp_digit_3 temp
scoreboard players reset $temp_digit temp

# 桁数が特定できたら、10^桁数-3から割り算して最終的に合計する
function api:stat/calc/percentage/calc

# 終わったら計算結果が$total_dmg tempにはいっているのでそこからstorageに移してtellraw

execute store result storage tusb_ad:api calc.value float 0.01 run scoreboard players get $total_dmg temp
tellraw @a [{"text": "補正raw: "}, {"nbt": "test_dmg", "storage": "tusb_ad:api"}]
tellraw @a [{"text": "補正%: "}, {"nbt": "test_rate", "storage": "tusb_ad:api"}]
tellraw @a [{"text": "計算結果: "}, {"nbt": "calc.value", "storage": "tusb_ad:api"}]
tellraw @a [{"text": "計算値そのまま: "} , {"score": {"name": "$total_dmg", "objective": "temp"}}]

# 各種リセット
data remove storage tusb_ad:api test_dmg
data remove storage tusb_ad:api test_rate
scoreboard players reset $dmg temp
scoreboard players reset $temp_dmg temp
scoreboard players reset $rate temp
scoreboard players reset $temp_rate temp
scoreboard players reset $digit temp
scoreboard players reset $digit_3 temp
scoreboard players reset $temp_digit_3 temp
scoreboard players reset $temp_digit temp
scoreboard players reset $10multi_3 temp
scoreboard players reset $10multi temp
scoreboard players reset $single_rate temp
scoreboard players reset $temp_10multi temp
scoreboard players reset $temp_10multi_3 temp