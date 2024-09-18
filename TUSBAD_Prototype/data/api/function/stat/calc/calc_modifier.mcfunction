#> api:stat/calc/calc_modifier


# 渡されたmodifierをaddします

# multiplybaseの処理
# multiply_baseにデフォルト100.0fを入れる
scoreboard players set $multi_base temp 1000

# 枠を作っておく
data modify storage tusb_ad:api multiply set value []

# 入力値の分割
function api:stat/separate_modifier

# addの処理(ここはもともと中身が0確定なのでオーバーフローチェックいらない)
scoreboard players operation $modifier temp += $add temp

# 計算先のスコアボードに代入
# $input1 tempと$input2 tempスコアボードに代入
execute store result score $input1 temp run scoreboard players get $modifier temp
execute store result score $input2 temp run scoreboard players get $multi_base temp

# addをmulti_baseと掛け算
function api:stat/calc/multi_digit

# 値を戻す
execute store result score $modifier temp run data get storage tusb_ad:api calc.value 10
# リセット
data remove storage tusb_ad:api calc.value

# multiplyの処理
# デフォルト値を設定
scoreboard players set $multi temp 1000

# もしあるなら実行
execute if data storage tusb_ad:api multiply[0] run function api:stat/calc/calc_multiply

# 今までの値をmultiplyと掛け算
# 先に計算先のスコアボードに代入
execute store result score $input1 temp run scoreboard players get $modifier temp
execute store result score $input2 temp run scoreboard players get $multi temp

# かける
function api:stat/calc/multi_digit

# 値を戻す
execute store result score $modifier temp run data get storage tusb_ad:api calc.value 10
# リセット
data remove storage tusb_ad:api calc.value

# ここの時点でtotalを取る
tellraw @a [{"score": {"name": "$modifier", "objective": "temp"}}, {"text": "が合計の値です"}]

# 値をそれぞれで返却(0.1x0.1=0.01なので返す値はかけてる部分のみ/100倍する)
execute store result storage tusb_ad:api return.modifier.add float 0.1 run scoreboard players get $add temp
execute store result storage tusb_ad:api return.modifier.multiply_base float 0.1 run scoreboard players get $multi_base temp
execute store result storage tusb_ad:api return.modifier.multiply float 0.1 run scoreboard players get $multi temp
execute store result storage tusb_ad:api return.modifier.total float 0.1 run scoreboard players get $modifier temp

# 途中まで勘違いしてたけどこれ攻撃時の処理じゃなくて、ステータスを更新する処理なのでmodifier事に書かないとだめよ～ん
# でもTSBにあるトータルの補正値まで計算しているのは何なんだろうか、
# separateしてる段階でそれぞれの要素の計算はすんでいるのでこれ以上やる必要な気もするが、、
# あーでも攻撃以外のステータスはトータル値が欲しいのか


# リセット

scoreboard players reset $modifier temp
scoreboard players reset $add temp
scoreboard players reset $multi_base temp
scoreboard players reset $multi temp