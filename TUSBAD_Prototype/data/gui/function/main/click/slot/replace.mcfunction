#> gui:main/click/slot/replace
#
# アイテムを戻す
#
# @within function gui:main/click/slot/gui_item

# そこにあるアイテムを取得
    # プレイヤーのカーソルにアイテムがあればそこに/item replace
        data remove storage gui: test
        execute store success storage gui: cursor byte 1 if items entity @p[tag=This] player.cursor *[custom_data={gui_item:{}}]
        $execute if data storage gui: cursor run item replace entity @p[tag=This] player.cursor from entity @s container.$(Slot)

    # プレイヤーのカーソルにアイテムがなければシュル箱入れて/loot give
        $execute unless data storage gui: {cursor:true} run data modify block 10000 0 10000 Items append from storage gui: gui_item[{Slot:$(Slot)b}]
        execute unless data storage gui: {cursor:true} run loot give @p[tag=This] mine 10000 0 10000 debug_stick
