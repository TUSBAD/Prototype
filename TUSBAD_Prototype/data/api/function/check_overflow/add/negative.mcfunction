#> api:check_overflow/add/negative

# A <= 最小値 - Bでオーバーフロー?


# -200000000 <= -2147483648 - -200000000

# 最小値 - Bを計算

# tempに一時代入
execute store result score $mintemp temp run scoreboard players get $system_min const

# 計算
scoreboard players operation $mintemp temp -= $add2 temp

# 一応tellrawして中身を見る
#tellraw @a [{"text": "aの中身: "},{"score":{"name": "$add1", "objective": "temp"}}]
#tellraw @a [{"text": "bの中身: "},{"score":{"name": "$mintemp", "objective": "temp"}}]

# A <= mintempを比較し、オーバーフローならtrueを返す
execute if score $add1 temp <= $mintemp temp run scoreboard players set $return temp 1
execute if score $add1 temp >= $mintemp temp run scoreboard players set $return temp 0