#> api:stat/calc/percentage/digit_to_multi/_3/below0
#
# 桁数反映
#
# @within function api:stat/calc/percentage/digit_to_multi/_3/digit_to_multi10_3

# 値が1より小さいので-0.1倍します(都合上-10x)
scoreboard players operation $10multi_3 temp *= $10 const
# 桁数用スコア+1
scoreboard players add $temp_digit_3 temp 1