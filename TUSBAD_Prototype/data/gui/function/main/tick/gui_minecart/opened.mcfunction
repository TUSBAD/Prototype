#> gui:main/tick/gui_minecart/
#
# GUIトロッコのtick処理
#
# @input as gui.minecart
# @within function gui:main/tick/

# OhMyDatを呼び出し
    function #oh_my_dat:please

# Itemsを代入して成功なら変更されているのでクリック時処理
    # 前tickのitemsを保存
        data modify storage gui: before_items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].gui.items
    # itemsを代入して成功判定を取る
        execute store success storage gui: test byte 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].gui.items set from entity @s Items
    # 内容が変わっていて成功した場合クリック時処理
        execute if data storage gui: {test:true} run function gui:main/click/
