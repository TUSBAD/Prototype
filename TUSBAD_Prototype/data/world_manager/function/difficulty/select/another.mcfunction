#> world_manager:difficulty/select/another
#
# 難易度選択：アナザー
#
# @within difficluty:*

#> 難易度適用
execute if data storage world_manager: difficult{world:"another"} run tellraw @a [{"storage":"tusb_ad:","nbt":"Prefix.INFO"},{"translate":"この難易度を選択中です。"}]

execute unless data storage world_manager: difficult.selected unless data storage world_manager: difficult{world:"another"} run function world_manager:difficulty/apply/another

execute if data storage world_manager: difficult.selected unless data storage world_manager: difficult{world:"another"} run tellraw @a [{"storage":"tusb_ad:","nbt":"Prefix.ERROR"},{"translate":"既に他の難易度を選択しているので\n%1$sには変更できません。","with":[{"translate":"アナザー","color":"#FF00FF"}]}]

#advancement revoke @s only world_manager:difficulty/select/another
