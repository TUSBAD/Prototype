#> player_manager:tomb/return_core
# 死んだ総数から半分の墓を古い順に取り返す処理

#墓が０個以下なら弾く
execute if score $tomb_counter tomb_count matches ..0 run say 取り返す墓がないようだ…

#取り返す数を算出
execute unless score $tomb_counter tomb_count matches ..0 run function player_manager:tomb/return_calc

