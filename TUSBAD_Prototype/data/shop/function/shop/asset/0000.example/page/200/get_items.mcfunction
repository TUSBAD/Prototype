#> shop:shop/asset/0000.example/page/200/get_items

data remove storage shop:page Items

function shop:shop/main/manager/init

data modify storage shop:page Items[4] set value {id:"minecraft:emerald",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"green","italic":false,"text":"←売るもの・買うもの→"}',"minecraft:custom_model_data":1}}
data modify storage shop:page Items[18] set value {id:"minecraft:orange_wool",count:1,components:{"minecraft:custom_name":'{"bold":true,"italic":false,"text":"前のページ"}'}}

#交易可能か不可か(ここを変える)
data modify storage shop:page Items[22] set value {id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"dark_red","italic":false,"text":"交易不可"}'}}
execute if score 4 request matches 5.. if score 5 request matches 1.. run data modify storage shop:page Items[22] set value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"dark_green","italic":false,"text":"交易する"}'}}

#売るもの買うもの(ここを変える)
#bay1
data modify storage shop:page Items[1] set value {id:"light_blue_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#bay2
data modify storage shop:page Items[2] set value {id:"light_blue_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#bay3
data modify storage shop:page Items[3] set value {id:"light_blue_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#bay4
data modify storage shop:page Items[10] set value {id:"minecraft:emerald",count:5,components:{"minecraft:custom_name":'" "'}}

#bay5
data modify storage shop:page Items[11] set value {id:"iron_block",count:1,components:{"minecraft:custom_name":'" "'}}

#bay6
data modify storage shop:page Items[12] set value {id:"light_blue_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#bay7
data modify storage shop:page Items[19] set value {id:"light_blue_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#bay8
data modify storage shop:page Items[20] set value {id:"light_blue_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#bay9
data modify storage shop:page Items[21] set value {id:"light_blue_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}


#sell1
data modify storage shop:page Items[5] set value {id:"yellow_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#sell2
data modify storage shop:page Items[6] set value {id:"yellow_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#sell3
data modify storage shop:page Items[7] set value {id:"yellow_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#sell4
data modify storage shop:page Items[14] set value {id:"yellow_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#sell5
data modify storage shop:page Items[15] set value {id:"minecraft:emerald",count:5,components:{"minecraft:custom_name":'"paaaaaa"',"minecraft:lore":['{"color":"red","text":"お前は涅槃に行け"}']}}

#sell6
data modify storage shop:page Items[16] set value {id:"yellow_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#sell7
data modify storage shop:page Items[23] set value {id:"yellow_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#sell8
data modify storage shop:page Items[24] set value {id:"yellow_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}

#sell9
data modify storage shop:page Items[25] set value {id:"yellow_stained_glass_pane",count:1,components:{"minecraft:custom_name":'" "'}}


function shop:shop/main/manager/none_set
data modify entity @s Items set from storage shop:page Items
