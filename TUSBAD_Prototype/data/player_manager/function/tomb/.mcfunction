#> player_manager:tomb/
# 死亡時に呼び出され、墓処理を行う

#キープインベントリや墓の検知状況をリセット
data modify storage tusb_ad:player_manager isKeepInventory set value 0
data modify storage tusb_ad:player_manager isTombDifficult set value 0

#キープインベントリかどうかを検知
execute store result storage tusb_ad:player_manager isKeepInventory int 1 run gamerule keepInventory

#キープインベントリがONである、かつ墓システムが有効な難易度であれば墓の処理を実行するフラグを立てる
execute if data storage tusb_ad:player_manager {isKeepInventory:1} if data storage core: difficult{world:"debug"} run data modify storage tusb_ad:player_manager isTombDifficult set value 1

#execute if data storage tusb_ad:player_manager {isKeepInventory:1} if data storage core: difficult{world:"picnic"} run data modify storage tusb_ad:player_manager isTombDifficult set value 0

execute if data storage tusb_ad:player_manager {isKeepInventory:1} if data storage core: difficult{world:"casual"} run data modify storage tusb_ad:player_manager isTombDifficult set value 1

#execute if data storage tusb_ad:player_manager {isKeepInventory:1} if data storage core: difficult{world:"another"} run data modify storage tusb_ad:player_manager isTombDifficult set value 0

#execute if data storage tusb_ad:player_manager {isKeepInventory:1} if data storage core: difficult{world:"hardcore"} run data modify storage tusb_ad:player_manager isTombDifficult set value 0
