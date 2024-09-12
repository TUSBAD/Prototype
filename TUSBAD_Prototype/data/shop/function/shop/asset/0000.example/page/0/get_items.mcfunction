#> shop:shop/asset/0000.example/page/0/get_items

data remove storage shop:page Items

function shop:shop/main/manager/init


data modify storage shop:page Items[2] set value {id:"minecraft:emerald",count:5,components:{"minecraft:custom_name":'"paaaaaa"',"minecraft:lore":['{"color":"red","text":"お前は涅槃に行け"}']}}

data modify storage shop:page Items[26] set value {id:"minecraft:lime_wool",count:1,components:{"minecraft:custom_name":'{"bold":true,"italic":false,"text":"次のページ"}'}}

function shop:shop/main/manager/none_set
data modify entity @s Items set from storage shop:page Items
