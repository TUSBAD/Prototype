#> api:stat/calc/multiply_base
#
# multiply_baseの計算をする

# 値を持ってくる
execute store result score $temp temp run data get storage tusb_ad:api test_op.amount 10

# オーバーフローを確認
data modify storage tusb_ad:api argument.scale set value 10
execute store result storage tusb_ad:api argument.multi1 float 0.1 run scoreboard players get $temp temp
execute store result storage tusb_ad:api argument.multi2 float 0.1 run scoreboard players get $multi_base temp

# tempとmulti_baseを表示
tellraw @a [{"score": {"name": "$temp", "objective": "temp"}}, {"text": "がtempの値です"}]
tellraw @a [{"score": {"name": "$multi_base", "objective": "temp"}}, {"text": "がmulti_baseの値です"}]

# 確認
function api:check_overflow/add/
# スコアボードを確認し、オーバーフローしていないなら足す
execute if score $return temp matches 0 run scoreboard players operation $multi_base temp += $temp temp

# オーバーフローしてるなら値を最大値に設定
execute if score $return temp matches 1 run scoreboard players operation $multi_base temp = $system_max const

# リセット
scoreboard players reset $return temp
scoreboard players reset $temp temp