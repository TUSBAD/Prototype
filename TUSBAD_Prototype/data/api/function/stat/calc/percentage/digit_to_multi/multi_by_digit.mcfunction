#> api:stat/calc/percentage/digit_to_multi/multi_by_digit
#
# 10^桁数を求めます
#
# @within function api:stat/calc/multi_digit

# 数字をそのままコピー
execute store result score $temp_digit temp run scoreboard players get $digit temp
scoreboard players set $10multi temp 1

# 計算
function api:stat/calc/percentage/digit_to_multi/normal/digit_to_multi10

# リセット
scoreboard players reset $calc_time temp