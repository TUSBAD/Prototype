#> api:stat/calc/percentage/get_digit
#
# $input2 tempを再起で/10して桁数を特定します
#
# @within function 
#   api:stat/calc/percentage/get_digit
#   api:stat/calc/multi_digit

# /10
scoreboard players operation $input2_temp temp /= $10 const
# 桁数スコア+1
scoreboard players add $digit temp 1

# もしも中身が1..なら再起
execute if score $input2_temp temp matches 1.. run function api:stat/calc/percentage/get_digit