#> shop:shop/main/tick/

function #oh_my_dat:please

data modify storage shop: shop_name set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].shop_name

data remove storage shop: Items
data modify storage shop: Items set from entity @s Items

data modify storage shop: opener set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].opener

function shop:shop/main/tick/macro with storage shop:

execute unless entity @e[tag=ShopKeep,type=interaction,distance=..0.3] run summon interaction ~ ~ ~ {Tags:[ShopKeep]}

execute unless entity @a[tag=Opener,distance=..7] run function shop:shop/main/tick/kill

function shop:shop/main/tick/compare_update

function shop:shop/main/tick/slot_check

# function shop:shop/main/tick/check with storage shop:

tag @a[tag=Opener] remove Opener