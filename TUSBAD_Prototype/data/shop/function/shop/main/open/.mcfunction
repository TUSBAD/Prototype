#> shop:shop/main/open/

tag @s add This

function #oh_my_dat:please

data modify storage shop: shop_name set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].shop_name

execute anchored eyes run function shop:shop/main/open/seek

tag @s remove This

advancement revoke @s only shop:open