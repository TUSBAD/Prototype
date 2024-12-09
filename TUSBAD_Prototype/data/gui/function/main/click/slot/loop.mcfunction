#> gui:main/click/loop
#
# 全部のスロットの処理を再帰で実行
# アイテム入れる時とかはこーしないとだからね
#
# @input 
#   as gui.minecart
#   storage gui: slots
# @output gui: gui_item
# @within function
#   gui:main/click/
#   gui:main/click/loop

# 元のアイテムにcustom_dataがあればそれに応じて処理を実行(別functionで)
    data remove storage gui: gui_item
    data modify storage gui: gui_item set from storage gui: slots[0].components."custom_data".gui_item
    execute if data storage gui: gui_item run function gui:main/click/slot/gui_item
    execute unless data storage gui: gui_item run function gui:main/click/slot/non_gui_item

# 元のアイテムがなければアイテムを入れるスロットだから、その処理をする(今はないからやらなくていいよ)

# 要素を削除しまだ残っていれば再帰
    data remove storage gui: slots[0]
    execute if data storage gui: slots[0] run function gui:main/click/slot/loop