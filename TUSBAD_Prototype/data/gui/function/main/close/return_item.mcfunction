#> gui:main/close/return_item/
#
# 非GUIアイテムをプレイヤーに返却します
#
# @within function gui:main/close/

# Itemsをコピーして、GUIアイテムのみを消す
    data remove storage gui: Items
    data modify storage gui: Items set from entity @e[type=chest_minecart,tag=gui.minecart.this,limit=1] Item
    data remove storage gui: Items[{components:{"custom_data":{gui_item:{}}}}]
# シュル箱に詰めてloot give
    data modify block 10000 0 10000 Items set from storage gui: Items
    execute if data block 10000 0 10000 Items run loot give @s mine 10000 0 10000 debug_stick