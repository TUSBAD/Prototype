#> api:check_overflow/multi/same/
#
# 値を元にオーバーフローしているかどうかを計算します
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
#declare score $maxtemp temp
#declare storage tusb_ad:api return.overflow
#
# @within function api:check_overflow/multi/same/

# 左右の正負が同じパターン

# a >= システム上限値 / bで左のほうが大きいならオーバーフロー

# システム上限値 / b
# tempに一時代入
execute store result score $maxtemp temp run scoreboard players get $system_max const

# 計算
scoreboard players operation $maxtemp temp /= $multi2 temp

# a >= maxtempを比較し、オーバーフローならtrueを返す
#execute if score $multi1 temp >= $maxtemp temp run scoreboard players set $return temp 1
#execute if score $multi1 temp <= $maxtemp temp run scoreboard players set $return temp 0

execute if score $multi1 temp >= $maxtemp temp run data modify storage tusb_ad:api return.overflow set value true
execute if score $multi1 temp <= $maxtemp temp run data modify storage tusb_ad:api return.overflow set value false

# 一応tellrawして中身を見る
#tellraw @a [{"text": "aの中身: "},{"score":{"name": "$multi1", "objective": "temp"}}]
#tellraw @a [{"text": "bの中身: "},{"score":{"name": "$maxtemp", "objective": "temp"}}]

# いらないのリセット
scoreboard players reset $maxtemp temp