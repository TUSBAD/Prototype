#> player_manager:tomb/return_calc
# 取り返す墓の数を算出

#取り返す数を算出
#半数を求める
scoreboard players operation $TombCounter tomb_calc = $TombCounter tomb_count
scoreboard players set $TombCounterCalc tomb_calc 2
scoreboard players operation $TombCounter tomb_calc /= $TombCounterCalc tomb_calc

#余りを求める
scoreboard players operation $TombCounterCalc tomb_count = $TombCounter tomb_count
scoreboard players operation $TombCounterCalc tomb_count %= $TombCounterCalc tomb_calc
scoreboard players operation $TombCounter tomb_calc += $TombCounterCalc tomb_count

#墓の総数を減算
scoreboard players operation $TombCounter tomb_count -= $TombCounter tomb_calc

#取り返す
tellraw @s [{"score":{"name":"$TombCounter","objective":"tomb_calc"}},{"text":"個の墓を取り返した！"}]
function player_manager:tomb/return_item


