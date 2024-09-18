#> api:stat/calc/add
#
# addの計算をする

# 値を持ってくる
execute store result score $temp temp run data get storage tusb_ad:api test_op.amount 10

# オーバーフローを確認
data modify storage tusb_ad:api argument.scale set value 10
execute store result storage tusb_ad:api argument.add1 float 0.1 run scoreboard players get $temp temp
execute store result storage tusb_ad:api argument.add2 float 0.1 run scoreboard players get $add temp
# 確認
function api:check_overflow/add/
# スコアボードを確認し、オーバーフローしていないなら足す
execute if score $return temp matches 0 run scoreboard players operation $add temp += $temp temp

# オーバーフローしてるなら値を最大値に設定
execute if score $return temp matches 1 run scoreboard players operation $add temp = $system_max const

# リセット
scoreboard players reset $return temp
scoreboard players reset $temp temp