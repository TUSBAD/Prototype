#> api:stat/calc/percentage/digit_to_multi/multi_by_digit
#
# 10^桁数を求めます

# -1
#scoreboard players operation $digit temp -= $1 const
#scoreboard players operation $temp_digit temp = $digit temp

execute store result score $temp_digit temp run scoreboard players get $digit temp
scoreboard players set $10multi temp 1

# 計算
function api:stat/calc/percentage/digit_to_multi/normal/digit_to_multi10

# リセット
scoreboard players reset $calc_time temp