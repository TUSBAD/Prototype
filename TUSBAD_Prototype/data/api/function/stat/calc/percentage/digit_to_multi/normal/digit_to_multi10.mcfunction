#> api:stat/calc/percentage/digit_to_multi/normal/digit_to_multi10
#
# 桁数はそのまま桁数のため、実際の桁数-1を$10multi tempにはいれます。
#
# @within function api:stat/calc/percentage/digit_to_multi/multi_by_digit

# まず現在の値を確認し調整
execute if score $temp_digit temp matches 2.. run function api:stat/calc/percentage/digit_to_multi/normal/above0

# 1ないしは実行回数が8(8桁,上限)になるまで再起
execute if score $calc_time temp matches 8 run return 0
execute unless score $temp_digit temp matches 1 run function api:stat/calc/percentage/digit_to_multi/normal/digit_to_multi10