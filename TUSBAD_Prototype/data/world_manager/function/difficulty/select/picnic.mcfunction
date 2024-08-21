#> world_manager:difficulty/select/picnic
#
# 難易度選択：ピクニック
#
# @within difficluty:*

#> 難易度適用
execute if data storage world_manager: difficult{world:"picnic"} run tellraw @a [{"storage":"tusb_ad:","nbt":"Prefix.INFO"},{"translate":"この難易度を選択中です。"}]

execute unless data storage world_manager: difficult{world:"picnic"} run function world_manager:difficulty/apply/picnic

# アナザー以上選択不可用処理
data modify storage world_manager: difficult.selected set value true

#advancement revoke @s only world_manager:difficulty/select/picnic
