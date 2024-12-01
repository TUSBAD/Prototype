#> gui:main/click/
#
# GUIトロッコのItemsが変わっていた時の処理
#
# @within function gui:main/tick/gui_minecart

# custom_dataはgui_item:trueを使って

# 変更されたスロットを取得(別functionで、リストの形で取得)

# slot_loop
    execute if data storage gui: slots[0] run function gui:main/click/slot_loop

# clear(最後なのは途中でカーソルにGUIアイテムがあるかどうか判定するから)