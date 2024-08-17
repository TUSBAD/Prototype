#> player_manager:tomb/return_calc
# 取り返す墓の数を算出

#取り返す数を算出
#半数を求める
scoreboard players operation $tomb_counter tomb_calc = $tomb_counter tomb_count
scoreboard players set $tomb_counter_calc tomb_calc 2
scoreboard players operation $tomb_counter tomb_calc /= $tomb_counter_calc tomb_calc

#余りを求める
scoreboard players operation $tomb_counter_calc tomb_count = $tomb_counter tomb_count
scoreboard players operation $tomb_counter_calc tomb_count %= $tomb_counter_calc tomb_calc
scoreboard players operation $tomb_counter tomb_calc += $tomb_counter_calc tomb_count

#墓の総数を減算
scoreboard players operation $tomb_counter tomb_count -= $tomb_counter tomb_calc

#取り返す
tellraw @s [{"score":{"name":"$tomb_counter","objective":"tomb_calc"}},{"text":"個の墓を取り返した！"}]
function player_manager:tomb/return_item


