#> gui:main/close/head_replace
#
# 頭のアイテムのtagを消す
#
# @within function gui:main/close/

# データを取得
    data modify storage gui: close_detector_item.components."minecraft:custom_data" set from entity @s Items[{Slot:103b}].components."minecraft:custom_data"
# close_detectorタグを削除
    data remove storage gui: close_detector_item.components."minecraft:custom_data".close_detector_item
# item_modifierを適応
    item modify entity @s armor.head gui:close_detector_item_remove