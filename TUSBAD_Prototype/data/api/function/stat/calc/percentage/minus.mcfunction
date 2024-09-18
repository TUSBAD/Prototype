#> api:stat/calc/percentage/minus
#
# dmgに10^桁数-3でわる

# 中身がマイナスなので一時的に+にして計算します
scoreboard players operation $temp_10multi_3 temp = $10multi_3 temp
scoreboard players operation $temp_10multi_3 temp *= $minus const

# 計算
scoreboard players operation $input1_temp temp /= $temp_10multi_3 temp

# 対応する桁の%を抜き出す
scoreboard players operation $single_rate temp = $input2_temp temp
scoreboard players operation $single_rate temp /= $10multi temp

# リセット
scoreboard players reset $temp_10multi_3 temp