#> api:stat/calc/percentage/get_digit
#
# $rate tempを再起で/10して桁数を特定します

# /10
scoreboard players operation $temp_rate temp /= $10 const
# 桁数スコア+1
scoreboard players add $digit temp 1

# もしも中身が1..なら再起
execute if score $temp_rate temp matches 1.. run function api:stat/calc/percentage/get_digit