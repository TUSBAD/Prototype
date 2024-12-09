#> gui:main/click/
#
# GUIトロッコのItemsが変わっていた時の処理
#
# @input as gui.minecart
# @within function gui:main/tick/gui_minecart/opened

# 変更されたスロットを取得(別functionで、リストの形で取得)
    function gui:main/click/slot/get

# slot_loop
    execute if data storage gui: slots[0] run function gui:main/click/slot/loop

# clear(最後なのは途中でカーソルにGUIアイテムがあるかどうか判定するから)
    