#> player_manager:tomb/return_calc
# 取り返す墓の数を算出

#取り返す数を算出
#半数を求める
scoreboard players operation $TombCounter TombCalc = $TombCounter TombCount
scoreboard players set $TombCounter_calc TombCalc 2
scoreboard players operation $TombCounter TombCalc /= $TombCounter_calc TombCalc

#余りを求める
scoreboard players operation $TombCounter_calc TombCount = $TombCounter TombCount
scoreboard players operation $TombCounter_calc TombCount %= $TombCounter_calc TombCalc
scoreboard players operation $TombCounter TombCalc += $TombCounter_calc TombCount

#墓の総数を減算
scoreboard players operation $TombCounter TombCount -= $TombCounter TombCalc

#取り返す
tellraw @s [{"score":{"name":"$TombCounter","objective":"TombCalc"}},{"text":"個の墓を取り返した！"}]
function player_manager:tomb/return_item


