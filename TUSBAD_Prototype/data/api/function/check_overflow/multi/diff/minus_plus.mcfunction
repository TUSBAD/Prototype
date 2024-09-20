#> api:check_overflow/multi/diff/minus_plus
#
# 左辺値がマイナス、右辺値がプラスの場合のオーバーフロー判定
#
# @input
#   score $multi1 temp
#   score $multi2 temp
#   score $return temp
# @output
#   score $return temp
#
#> 変数定義
#declare score $multi1 temp
#declare score $multi2 temp
#declare score $mintemp temp
#declare storage tusb_ad:api return.overflow
#declare scor $system_min const
#
# @within function api:check_overflow/multi/

# 左辺がマイナス、右辺がプラスの場合
# a <= システム下限値 + bならオーバーフロー

# システム上限値 / b
# tempに一時代入
execute store result score $mintemp temp run scoreboard players get $system_min const

# 計算
scoreboard players operation $mintemp temp /= $multi2 temp

# a <= maxtempを比較し、オーバーフローならtrueを返す
#execute if score $multi1 temp <= $mintemp temp run scoreboard players set $return temp 1
#execute if score $multi1 temp >= $mintemp temp run scoreboard players set $return temp 0
execute if score $multi1 temp <= $mintemp temp run data modify storage tusb_ad:api return.overflow set value true
execute if score $multi1 temp >= $mintemp temp run data modify storage tusb_ad:api return.overflow set value false

# 一応tellrawして中身を見る
#tellraw @a [{"text": "aの中身: "},{"score":{"name": "$multi1", "objective": "temp"}}]
#tellraw @a [{"text": "bの中身: "},{"score":{"name": "$mintemp", "objective": "temp"}}]

# いらないのリセット
scoreboard players reset $mintemp temp