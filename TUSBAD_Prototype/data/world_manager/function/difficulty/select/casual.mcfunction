#> world_manager:difficulty/select/casual
#
# 難易度選択：カジュアル
#
# @within difficluty:*

#> 難易度適用
execute if data storage world_manager: difficult{world:"casual"} run tellraw @a [{"storage":"tusb_ad:","nbt":"Prefix.INFO"},{"translate":"この難易度を選択中です。"}]

execute unless data storage world_manager: difficult{world:"casual"} run function world_manager:difficulty/apply/casual

# アナザー以上選択不可用処理
data modify storage world_manager: difficult.selected set value true

#advancement revoke @s only world_manager:difficulty/select/casual
