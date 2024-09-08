#> shop:shop/main/open/slot_cheak

function #oh_my_dat:please
data modify storage shop: shop_name set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].shop_name

data remove storage shop: slot

data remove storage shop: Items
data modify storage shop: Items set from entity @s Items

data modify storage shop: opener set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].opener

execute store result storage shop: page int 1 run scoreboard players get @s page

#0
execute unless data storage shop: Items[{Slot:0b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 0b

#1
execute unless data storage shop: Items[{Slot:1b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 1b

#2
execute unless data storage shop: Items[{Slot:2b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 2b

#3
execute unless data storage shop: Items[{Slot:3b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 3b

#4
execute unless data storage shop: Items[{Slot:4b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 4b

#5
execute unless data storage shop: Items[{Slot:5b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 5b

#6
execute unless data storage shop: Items[{Slot:6b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 6b

#7
execute unless data storage shop: Items[{Slot:7b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 7b

#8
execute unless data storage shop: Items[{Slot:8b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 8b

#9
execute unless data storage shop: Items[{Slot:9b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 9b

#10
execute unless data storage shop: Items[{Slot:10b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 10b

#11
execute unless data storage shop: Items[{Slot:11b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 11b

#12
execute unless data storage shop: Items[{Slot:12b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 12b

#13
execute unless data storage shop: Items[{Slot:13b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 13b

#15
execute unless data storage shop: Items[{Slot:15b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 15b

#16
execute unless data storage shop: Items[{Slot:16b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 16b

#17
execute unless data storage shop: Items[{Slot:17b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 17b

#18
execute unless data storage shop: Items[{Slot:18b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 18b

#19
execute unless data storage shop: Items[{Slot:19b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 19b

#20
execute unless data storage shop: Items[{Slot:20b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 20b

#21
execute unless data storage shop: Items[{Slot:21b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 21b

#22
execute unless data storage shop: Items[{Slot:22b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 22b

#23
execute unless data storage shop: Items[{Slot:23b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 23b

#24
execute unless data storage shop: Items[{Slot:24b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 24b

#25
execute unless data storage shop: Items[{Slot:25b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 25b

#26
execute unless data storage shop: Items[{Slot:26b,components:{"minecraft:custom_data":{none:0}}}] run data modify storage shop: slot set value 26b


execute if data storage shop: slot run function shop:shop/main/tick/run_function with storage shop:
