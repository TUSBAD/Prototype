#> shop:shop/aseet/0000.example/page/0/get_items

data remove storage shop:page Items

function shop:shop/aseet/init

data modify storage shop:page Items[2] set value {id:"minecraft:emerald",count:5,components:{"minecraft:custom_name":'"paaaaaa"',"minecraft:lore":['{"color":"red","text":"おまえをころすう"}']}}















function shop:shop/aseet/none_set
data modify entity @s Items set from storage shop:page Items
