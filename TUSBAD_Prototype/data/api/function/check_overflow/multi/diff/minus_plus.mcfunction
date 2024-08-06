#> api:check_overflow/multi/diff/minus_plus
#
# 左辺値がマイナス、右辺値がプラスの場合のオーバーフロー判定

# 左辺がマイナス、右辺がプラスの場合
# a <= システム下限値 + bならオーバーフロー

# システム上限値 / b
# tempに一時代入
execute store result score $mintemp temp run scoreboard players get $system_min const

# 計算
scoreboard players operation $mintemp temp /= $multi2 temp

# a <= maxtempを比較
execute if score $multi1 temp <= $mintemp temp run say overflow

# 一応tellrawして中身を見る
tellraw @a [{"text": "aの中身: "},{"score":{"name": "$multi1", "objective": "temp"}}]
tellraw @a [{"text": "bの中身: "},{"score":{"name": "$mintemp", "objective": "temp"}}]

# いらないのリセット
scoreboard players reset $mintemp temp