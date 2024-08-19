#> api:stat/calc/percentage/digit_to_multi/normal/above0

# 値が1より大きいので10倍します
scoreboard players operation $10multi temp *= $10 const
# 桁数用スコア-1
scoreboard players remove $temp_digit temp 1
# 実行回数スコア+1
scoreboard players add $calc_time temp 1