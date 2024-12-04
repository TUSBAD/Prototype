#> gui:main/click/loop
#
# 全部のスロットの処理を再帰で実行
# アイテム入れる時とかはこーしないとだからね
#
# @within function gui:main/click/

# 元のアイテムにcustom_dataがあればそれに応じて処理を実行(別functionで)
    execute store success storage gui: test byte 1 run data modify storage gui: gui_item set from storage gui: slots[0].components."custom_data".gui_item
    execute if data storage gui: {test:true} run function gui:main/click/slot/gui_item
    execute if data storage gui: {test:false}

# 元のアイテムがなければアイテムを入れるスロットだから、その処理をする(今はないからやらなくていいよ)
