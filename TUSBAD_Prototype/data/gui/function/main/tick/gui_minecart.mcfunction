#> gui:main/tick/gui_minecart
#
# GUIトロッコのtick処理
#
# @within function gui:main/tick/

# OhMyDatを呼び出し
    function #oh_my_dat:please

# Itemsを代入して成功なら変更されている
    # gui:main/click/ ここに飛ばしてね

    data modify storage gui: Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].gui.BeforeItems
    execute store success storage gui: test byte 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].gui.Items set from entity @s Items
    execute if data storage gui: {test:true} run function gui:main/click/
