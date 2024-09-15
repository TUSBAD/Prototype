#> shop:shop/main/tick/compare
# チェストロッコの中身をスロットごとに個別で比較し、変更があればスロット番号を返す
# なければ-1を返す

#元となる比較データをoh_my_datから代入
function #oh_my_dat:please
data modify storage shop:temp Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].temp_shop

### アイテム全てに変更がなければその時点で中止
data modify storage shop: test set value true 
execute if data storage shop: Items store success storage shop: test byte 1 run data modify storage shop:temp Items set from storage shop: Items
execute if data storage shop: {test:false} run return -1

### 各数字に対応したスロットを比較しています
data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:0b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[0] set from storage shop: Items[{Slot:0b}]
execute if data storage shop: {test:true} run return 0

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:1b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[1] set from storage shop: Items[{Slot:1b}]
execute if data storage shop: {test:true} run return 1

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:2b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[2] set from storage shop: Items[{Slot:2b}]
execute if data storage shop: {test:true} run return 2

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:3b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[3] set from storage shop: Items[{Slot:3b}]
execute if data storage shop: {test:true} run return 3

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:4b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[4] set from storage shop: Items[{Slot:4b}]
execute if data storage shop: {test:true} run return 4

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:5b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[5] set from storage shop: Items[{Slot:5b}]
execute if data storage shop: {test:true} run return 5

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:6b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[6] set from storage shop: Items[{Slot:6b}]
execute if data storage shop: {test:true} run return 6

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:7b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[7] set from storage shop: Items[{Slot:7b}]
execute if data storage shop: {test:true} run return 7

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:8b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[8] set from storage shop: Items[{Slot:8b}]
execute if data storage shop: {test:true} run return 8

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:9b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[9] set from storage shop: Items[{Slot:9b}]
execute if data storage shop: {test:true} run return 9

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:10b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[10] set from storage shop: Items[{Slot:10b}]
execute if data storage shop: {test:true} run return 10

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:11b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[11] set from storage shop: Items[{Slot:11b}]
execute if data storage shop: {test:true} run return 11

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:12b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[12] set from storage shop: Items[{Slot:12b}]
execute if data storage shop: {test:true} run return 12

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:13b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[13] set from storage shop: Items[{Slot:13b}]
execute if data storage shop: {test:true} run return 13

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:14b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[14] set from storage shop: Items[{Slot:14b}]
execute if data storage shop: {test:true} run return 14

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:15b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[15] set from storage shop: Items[{Slot:15b}]
execute if data storage shop: {test:true} run return 15

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:16b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[16] set from storage shop: Items[{Slot:16b}]
execute if data storage shop: {test:true} run return 16

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:17b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[17] set from storage shop: Items[{Slot:17b}]
execute if data storage shop: {test:true} run return 17

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:18b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[18] set from storage shop: Items[{Slot:18b}]
execute if data storage shop: {test:true} run return 18

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:19b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[19] set from storage shop: Items[{Slot:19b}]
execute if data storage shop: {test:true} run return 19

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:20b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[20] set from storage shop: Items[{Slot:20b}]
execute if data storage shop: {test:true} run return 20

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:21b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[21] set from storage shop: Items[{Slot:21b}]
execute if data storage shop: {test:true} run return 21

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:22b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[22] set from storage shop: Items[{Slot:22b}]
execute if data storage shop: {test:true} run return 22

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:23b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[23] set from storage shop: Items[{Slot:23b}]
execute if data storage shop: {test:true} run return 23

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:24b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[24] set from storage shop: Items[{Slot:24b}]
execute if data storage shop: {test:true} run return 24

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:25b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[25] set from storage shop: Items[{Slot:25b}]
execute if data storage shop: {test:true} run return 25

data modify storage shop: test set value true 
execute if data storage shop: Items[{Slot:26b}] store success storage shop: test byte 1 run data modify storage shop:temp Items[26] set from storage shop: Items[{Slot:26b}]
execute if data storage shop: {test:true} run return 26
