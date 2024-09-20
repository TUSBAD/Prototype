#> api:stat/calc/multi_digit
#
# 桁数毎に掛け算をします(これをすることによりかけることによる小数部の変動を抑えることができる)
# 入力値は9999999.9まで(raw, %ともに)
# 出力値は9999999.9まで(raw)
#
# @input
#   score $input1 temp
#   score $input2 temp
#
# @output
#   storage tusb_ad:api calc.value
#
# @api

# ex
# 例えば1234.5dmgを167.8%増加させたい時
# スコアボードでそのまま掛け算するとこうなる(12345x1678=20714910)
# そのままの値で計算していたら小数部が広がってしまう(0.1x0.1で0.01になっているのに加え、%で掛け算しているのでさらに0.01、実に1000倍も無駄である)
# そのため桁数ごとに分けて掛け算し、その結果を足すことにより小数部のズレを抑えることができる。
# 代償に有効数字が小数1桁で止まるので、計算値に少しズレが生じる(桁落ち)

# 下記がこれらコマンドの実行内容を式にしたもの(1234.5dmgを167.8%)
# 123450 x 1
# 12345 x 6
# 1234 x 7
# 123 x 8
# これらを合計して207142→207142/100で2071.4、本来の結果は2071.4910のため桁落ち→足し算による僅かなズレが生じる。

# また%倍率は起点の100%の場合はそのままかけるが、それより高い場合は高い桁数分dmgをx10、低い場合は低い桁数分dmgをx0.1する
# ここでの%補正はベース値の100%を足しているものとする


# というかこれ、rawと%の計算しか考慮してないけどraw*rawや%*%で計算しても大丈夫なのか?

# リセット
scoreboard players set $total_value temp 0

# dmgを10倍してスコアボードに(inputで受け取っているものとする)
#execute store result score $input1 temp run data get storage tusb_ad:api test_dmg 10
# コピー作成
scoreboard players operation $input1_temp temp = $input1 temp

# %は10倍でスコアボードに入れ、数値的上限である8桁から%を割っていき、1以上の場合はその桁が有効であるため、
# 割り算してその桁を抜き出す、抜き出してかけて計算したらその要素を削除し、次もその桁分で割ればよいかと。

# rateを10倍してスコアボードに(inputで受け取っているものとする)
#execute store result score $input2 temp run data get storage tusb_ad:api test_rate 10
# コピー作成
scoreboard players operation $input2_temp temp = $input2 temp

# その後再帰関数にはいって桁数を特定する
function api:stat/calc/percentage/get_digit

# 中身をもとに戻す
scoreboard players operation $input2_temp temp = $input2 temp

# 桁数が特定できたのでかける数を特定(10^桁数-3と10^桁数それぞれ)
function api:stat/calc/percentage/digit_to_multi/multi_by_digit
function api:stat/calc/percentage/digit_to_multi/multi_by_digit_3

# temp_digit_3リセット
scoreboard players reset $temp_digit_3 temp
scoreboard players reset $temp_digit temp

# 桁数が特定できたら、10^桁数-3から割り算して最終的に合計する
function api:stat/calc/percentage/calc

# 終わったら計算結果が$total_dmg tempにはいっているのでそこからstorageに移してtellraw

execute store result storage tusb_ad:api calc.value float 0.01 run scoreboard players get $total_value temp
#tellraw @a [{"text": "補正raw: "}, {"nbt": "test_dmg", "storage": "tusb_ad:api"}]
#tellraw @a [{"text": "補正%: "}, {"nbt": "test_rate", "storage": "tusb_ad:api"}]
tellraw @a [{"text": "乗算の計算結果: "}, {"nbt": "calc.value", "storage": "tusb_ad:api"}]
#tellraw @a [{"text": "計算値そのまま: "} , {"score": {"name": "$total_dmg", "objective": "temp"}}]

# 各種リセット
data remove storage tusb_ad:api test_dmg
data remove storage tusb_ad:api test_rate
scoreboard players reset $input1 temp
scoreboard players reset $input1_temp temp
scoreboard players reset $input2 temp
scoreboard players reset $input2_temp temp
scoreboard players reset $digit temp
scoreboard players reset $digit_3 temp
scoreboard players reset $temp_digit_3 temp
scoreboard players reset $temp_digit temp
scoreboard players reset $10multi_3 temp
scoreboard players reset $10multi temp
scoreboard players reset $single_rate temp
scoreboard players reset $temp_10multi temp
scoreboard players reset $temp_10multi_3 temp
scoreboard players reset $total_value temp