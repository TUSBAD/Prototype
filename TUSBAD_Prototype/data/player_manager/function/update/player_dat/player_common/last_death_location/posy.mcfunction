#> player_manager:update/player_dat/player_common/last_death_location/posy
# プレイヤーNBT（プレイヤー固有）、最後の死亡地点のＹ座標

function #oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LastDeathLocation.pos[1] set from entity @s LastDeathLocation.pos[1]
