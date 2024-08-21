#> world_manager:difficulty/apply/debug
#
# 難易度の変更
#
# @within difficulty:*
# 難易度：デバッグ
# 製作中等に使う難易度

#> チーム色変更
function world_manager:difficulty/color/debug

data modify storage world_manager: difficult.before set from storage world_manager: difficult.world
data modify storage world_manager: difficult.world set value "debug"

#> 難易度による補正欄
# アナザー/ハードコアのみKeepInventoryはfalseとなる
gamerule keepInventory true
gamerule sendCommandFeedback true

#> チャット表示
tellraw @a [{"storage":"tusb_ad:","nbt":"Prefix.DEBUG"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate":"デバッグ","color":"#808080"}]}]
execute as @a at @s run playsound minecraft:entity.villager.work_toolsmith master @s ~ ~ ~ 1 1 1