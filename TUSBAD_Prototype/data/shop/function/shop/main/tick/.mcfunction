#> shop:shop/main/tick/

function #oh_my_dat:please

function shop:shop/main/tick/get_opener with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]

execute unless entity @a[tag=Opener,distance=..7] run kill @s

function shop:shop/main/tick/slot_check

tag @a[tag=Opener] remove Opener

