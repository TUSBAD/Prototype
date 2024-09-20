#> api:check_overflow/add/positive
#
# プラス + プラスのときオーバーフローするかをチェックします。
#
# @input
#    score $add1 temp
#    score $add2 temp
# @output
#    score $return temp
#
#> 変数定義
#declare score $add1 temp
#declare score $add2 temp
#declare storage tusb_ad:api return.overflow
#declare score $maxtemp temp
#declare score $system_max const
#
# @within function api:check_overflow/add/



# A >= 最大値 - Bならオーバーフロー

# 最大値 - Bを計算
# tempに一時代入
execute store result score $maxtemp temp run scoreboard players get $system_max const

# 計算
scoreboard players operation $maxtemp temp -= $add2 temp

# A >= maxtempを比較し、オーバーフローならtrueを返す
#execute if score $add1 temp >= $maxtemp temp run scoreboard players set $return temp 1
#execute if score $add1 temp <= $maxtemp temp run scoreboard players set $return temp 0
execute if score $add1 temp >= $maxtemp temp run data modify storage tusb_ad:api return.overflow set value true
execute if score $add1 temp <= $maxtemp temp run data modify storage tusb_ad:api return.overflow set value false