#> gui:main/click/slot/get
#
# 変更されたスロットを取得
#
# @input storage
#   gui: before_items : list
# @output storage
#   gui: slots : list
# @within function gui:main/click/

# slotsにItemsをコピー
    data modify storage gui: slots set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].gui.items

# 前tickのアイテムデータで今のデータを上書きし、失敗すれば削除\
    27回繰り返し、変更のあったスロットの前tickのデータのみが保存され残りは破棄されることになる
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:0b}] set from storage gui: before_items[{Slot:0b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:0b}]
# 1-26
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:1b}] set from storage gui: before_items[{Slot:1b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:1b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:2b}] set from storage gui: before_items[{Slot:2b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:2b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:3b}] set from storage gui: before_items[{Slot:3b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:3b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:4b}] set from storage gui: before_items[{Slot:4b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:4b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:5b}] set from storage gui: before_items[{Slot:5b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:5b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:6b}] set from storage gui: before_items[{Slot:6b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:6b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:7b}] set from storage gui: before_items[{Slot:7b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:7b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:7b}] set from storage gui: before_items[{Slot:7b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:7b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:8b}] set from storage gui: before_items[{Slot:8b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:8b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:9b}] set from storage gui: before_items[{Slot:9b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:9b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:10b}] set from storage gui: before_items[{Slot:10b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:10b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:11b}] set from storage gui: before_items[{Slot:11b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:11b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:12b}] set from storage gui: before_items[{Slot:12b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:12b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:13b}] set from storage gui: before_items[{Slot:13b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:13b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:14b}] set from storage gui: before_items[{Slot:14b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:14b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:15b}] set from storage gui: before_items[{Slot:15b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:15b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:16b}] set from storage gui: before_items[{Slot:16b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:16b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:17b}] set from storage gui: before_items[{Slot:17b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:17b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:18b}] set from storage gui: before_items[{Slot:18b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:18b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:19b}] set from storage gui: before_items[{Slot:19b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:19b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:20b}] set from storage gui: before_items[{Slot:20b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:20b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:21b}] set from storage gui: before_items[{Slot:21b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:21b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:22b}] set from storage gui: before_items[{Slot:22b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:22b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:23b}] set from storage gui: before_items[{Slot:23b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:23b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:24b}] set from storage gui: before_items[{Slot:24b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:24b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:25b}] set from storage gui: before_items[{Slot:25b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:25b}]
    execute store success storage gui: test byte 1 run data modify storage gui: slots[{Slot:26b}] set from storage gui: before_items[{Slot:26b}]
    execute if data storage gui: {test:false} run data remove storage gui: slots[{Slot:26b}]

# reset 
    data remove storage gui: test