#> player_manager:tomb/return_item
# アイテムを取り返す処理

#一番古い死亡時のアイテムを取り返す
execute if block ~ ~ ~ chest run data modify block ~ ~ ~ Items set from storage tusb_ad:player_manager tomb[0]

#取り返したストレージを消去
execute if block ~ ~ ~ chest run say 墓を取りかえした！
data remove storage tusb_ad:player_manager tomb[0]
execute if score $TombCounter TombCalc matches 1.. run scoreboard players remove $TombCounter TombCalc 1

#まだ取り返せるなら再起
execute if score $TombCounter TombCalc matches 1.. run function player_manager:tomb/return_item



