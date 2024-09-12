#> shop:shop/main/tick/

function #oh_my_dat:please

function shop:shop/main/tick/get_opener with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]

execute unless entity @e[tag=shopkeep,type=interaction,distance=..0.3] run summon interaction ~ ~ ~ {Tags:["shopkeep"]}

execute unless entity @a[tag=Opener,distance=..7] run kill @s
execute unless entity @a[tag=Opener,distance=..7] run kill @e[type=interaction,tag=shopkeep]

function shop:shop/main/tick/slot_check

function shop:shop/main/tick/check with storage shop:

tag @a[tag=Opener] remove Opener
