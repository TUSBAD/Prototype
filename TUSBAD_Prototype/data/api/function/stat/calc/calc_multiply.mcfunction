#> api:stat/calc/calc_multiply
#
# 再起してmultiplyを計算します
#
# @within function 
#   api:stat/calc/calc_multiply

# 値を取得
execute store result score $temp temp run data get storage tusb_ad:api multiply[-1] 10
# ベース分追加
scoreboard players add $temp temp 1000

# 既存と乗算

# セット
# 先に計算先のスコアボードに代入
execute store result score $input1 temp run scoreboard players get $multi temp
execute store result score $input2 temp run scoreboard players get $temp temp

# かける
function api:stat/calc/multi_digit

# 値を戻す
execute store result score $multi temp run data get storage tusb_ad:api calc.value 10
# リセット
data remove storage tusb_ad:api calc

# セット
# 先に計算先のスコアボードに代入
execute store result score $input1 temp run scoreboard players get $modifier temp
execute store result score $input2 temp run scoreboard players get $multi temp

# かける
function api:stat/calc/multi_digit

# 値を戻す
execute store result score $modifier temp run data get storage tusb_ad:api calc.value 10
# リセット
data remove storage tusb_ad:api calc

#scoreboard players operation $multi temp *= $temp temp
#scoreboard players operation $modifier temp *= $multi temp
# 余分な小数部を削除(0.1x0.1なので0.01になる)
# その為有効数字1つ消えるので、inputは7+1桁やね
#scoreboard players operation $multi temp /= $1000 const
#scoreboard players operation $modifier temp /= $1000 const

# リストから要素の削除
data remove storage tusb_ad:api multiply[-1]

# スコアリセット
scoreboard players reset $temp temp

# リストに要素があるなら再帰
execute if data storage tusb_ad:api multiply[-1] run function api:stat/calc/calc_multiply