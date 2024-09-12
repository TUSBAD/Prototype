#> shop:shop/main/open/personal

function #oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].opener set from entity @p[tag=This] UUID

tag @s add Open

scoreboard players set @s page 0

$function shop:shop/asset/$(shop_name)/page/0/get_items

$function shop:shop/asset/$(shop_name)/open

data modify entity @s Items set from storage shop:page Items

execute at @p[tag=This] run tp @s ~ ~-2 ~