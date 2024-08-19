#> api:stat/calc/percentage/digit_to_multi/_3/digit_to_multi10_3
#
# 値を確認し、値に応じて10倍ないしは-0.1倍(-10x)します

# まず現在の値を確認し調整
execute if score $temp_digit_3 temp matches 1.. run function api:stat/calc/percentage/digit_to_multi/_3/above0
execute if score $temp_digit_3 temp matches ..-1 run function api:stat/calc/percentage/digit_to_multi/_3/below0

# 0になるまで再起
execute unless score $temp_digit_3 temp matches 0 run function api:stat/calc/percentage/digit_to_multi/_3/digit_to_multi10_3