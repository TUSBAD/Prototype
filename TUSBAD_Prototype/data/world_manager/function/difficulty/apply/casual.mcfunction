#> world_manager:difficulty/apply/casual
#
# 難易度の変更
#
# @within difficulty:*
# 難易度：カジュアル
# デフォルト

#> チーム色変更
execute unless data storage world_manager: difficult{world:"casual"} run function wordl_manager:difficulty/color/casual

data modify storage world_manager: difficult.before set from storage world_manager: difficult.world
data modify storage world_manager: difficult.world set value "casual"

#> 難易度による補正欄
# アナザー/ハードコアのみKeepInventoryはfalseとなる
gamerule keepInventory true

#> チャット表示
tellraw @a [{"storage":"tusb_ad:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate":"カジュアル","color":"#ff2A2A"}]}]
execute as @a at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1 1
