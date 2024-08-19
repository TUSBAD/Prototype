#> api:stat/calc/percentage/digit_to_multi/multi_by_digit_3
#
# 10^桁数-3を求めます(割分厘表現して計算するからその時の整数部で計算する時に必要)

# スコアボード作成
execute store result score $digit_3 temp run scoreboard players get $digit temp
# -3
scoreboard players operation $digit_3 temp -= $3 const
scoreboard players operation $temp_digit_3 temp = $digit_3 temp

# 桁数を元にかける数を計算

# マイナスの場合も考慮して計算
execute store result score $temp_digit temp run scoreboard players get $digit temp
scoreboard players set $10multi_3 temp 1
# もし$digit_3が0より小さいなら-1をかける
execute if score $temp_digit_3 temp matches ..0 run scoreboard players operation $10multi_3 temp *= $minus const

# 計算
function api:stat/calc/percentage/digit_to_multi/_3/digit_to_multi10_3