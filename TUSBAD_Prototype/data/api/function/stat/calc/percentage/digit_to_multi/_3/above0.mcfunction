#> api:stat/calc/percentage/digit_to_multi/_3/above0
#
# 桁数反映
#
# @within function api:stat/calc/percentage/digit_to_multi/_3/digit_to_multi10_3

# 値が1より大きいので10倍します
scoreboard players operation $10multi_3 temp *= $10 const
# 桁数用スコア-1
scoreboard players remove $temp_digit_3 temp 1