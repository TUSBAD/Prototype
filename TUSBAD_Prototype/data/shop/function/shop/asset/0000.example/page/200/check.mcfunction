#> shop:shop/asset/0000.example/page/200/check

execute store result score 4 request run clear @p[tag=Opener] emerald 0

execute store result score 5 request run clear @p[tag=Opener] iron_block 0

data modify storage shop:page Items[22] set value {id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"dark_red","italic":false,"text":"交易不可"}'}}

execute if score 4 request matches 5.. if score 5 request matches 1.. run data modify storage shop:page Items[22] set value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"dark_green","italic":false,"text":"交易する"}'}}

function shop:shop/main/manager/none_set
data modify entity @s Items set from storage shop:page Items
