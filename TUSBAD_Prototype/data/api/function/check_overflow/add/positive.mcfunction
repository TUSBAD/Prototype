#> api:check_overflow/add/positive



# A >= 最大値 - Bならオーバーフロー

# 最大値 - Bを計算
# tempに一時代入
execute store result score $maxtemp temp run scoreboard players get $system_max const

# 計算
scoreboard players operation $maxtemp temp -= $add2 temp

# A >= maxtempを比較し、オーバーフローならtrueを返す
execute if score $add1 temp >= $maxtemp temp run scoreboard players set $return temp 1
execute if score $add1 temp <= $maxtemp temp run scoreboard players set $return temp 0