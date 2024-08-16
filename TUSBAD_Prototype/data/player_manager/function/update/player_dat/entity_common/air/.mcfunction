#> player_manager:update/player_dat/entity_common/air/
# プレイヤーNBT（エンティティ汎用NBT系）、air（空気）を保存する処理

function oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Air set from entity @s Air
