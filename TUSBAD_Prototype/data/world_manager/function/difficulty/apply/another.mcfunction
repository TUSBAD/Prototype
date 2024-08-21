#> world_manager:difficulty/apply/another
#
# 難易度の変更
#
# @within difficulty:*
# 難易度：アナザー
# ストレージ名これでいいか分からんのでとりあえず仮

#> チーム色変更
execute unless data storage world_manager: difficult{world:"another"} run function world_manager:color/another

data modify storage world_manager: difficult.before set from storage world_manager: difficult.world
data modify storage world_manager: difficult.world set value "another"

#> 難易度による補正欄
# アナザー/ハードコアのみKeepInventoryはfalseとなる
gamerule keepInventory false

#> チャット表示
tellraw @a [{"storage":"tusb_ad:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate":"アナザー","color":"#FF00FF"}]}]
execute as @a at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 1 0 1
