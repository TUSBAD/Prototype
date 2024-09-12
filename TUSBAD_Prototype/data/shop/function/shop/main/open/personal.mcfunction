#> shop:shop/main/open/personal

function #oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].opener set from entity @p[tag=This] UUID

tag @s add open

scoreboard players set @s page 0

$function shop:shop/aseet/$(shop_name)/page/0/get_items

data modify entity @s Items set from storage shop:page Items

tp @s @p[tag=This]

summon interaction ~ ~ ~
