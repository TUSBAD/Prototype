#> api:stat/calc/percentage/plus
#
# dmgに10^桁数-3をかける

# 引数セット
data modify storage tusb_ad:api argument.scale set value 1
execute store result storage tusb_ad:api argument.multi1 int 1 run scoreboard players get $temp_dmg temp
execute store result storage tusb_ad:api argument.multi2 int 1 run scoreboard players get $10multi_3 temp
# オーバーフローチェック
function api:check_overflow/multi/

# オーバーフローしてないなら計算
execute if score $return temp matches 0 run scoreboard players operation $temp_dmg temp *= $10multi_3 temp
# オーバーフローしているなら最大値にセット
execute if score $return temp matches 1 run scoreboard players operation $10multi_3 temp = $system_max const

# リセット
scoreboard players reset $return temp

# 対応する桁の%を抜き出す
scoreboard players operation $single_rate temp = $temp_rate temp
scoreboard players operation $single_rate temp /= $10multi temp