#> world_manager:difficulty/select/hardcore
#
# 難易度選択：ハードコア
#
# @within difficluty:*

#> 難易度適用
execute if data storage world_manager: difficult{world:"hardcore"} run tellraw @a [{"storage":"tusb_ad:","nbt":"Prefix.INFO"},{"translate":"この難易度を選択中です。"}]

execute unless data storage world_manager: difficult.selected if data storage world_manager: difficult{world:"another"} unless data storage world_manager: difficult{world:"hardcore"} run function world_manager:difficulty/apply/hardcore

execute if data storage world_manager: difficult.selected unless data storage world_manager: difficult{world:"hardcore"} run tellraw @a [{"storage":"tusb_ad:","nbt":"Prefix.ERROR"},{"translate":"既に他の難易度を選択しているので\n%1$sには変更できません。","with":[{"translate":"ハードコア","color":"#FF00FF"}]}]

#advancement revoke @s only world_manager:difficulty/select/hardcore
