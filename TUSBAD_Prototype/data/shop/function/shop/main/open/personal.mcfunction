#> shop:shop/main/open/personal

function #oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].opener set from entity @p[tag=This] UUID

tag @s add open

scoreboard players set @s page 0
