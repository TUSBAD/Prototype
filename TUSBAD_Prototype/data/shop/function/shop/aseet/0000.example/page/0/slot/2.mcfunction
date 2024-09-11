#> shop:shop/aseet/0000.example/page/0/slot/2

scoreboard players set @s page 200

function shop:shop/aseet/0000.example/page/200/get_items

data modify entity @s Items set from storage shop:page Items
