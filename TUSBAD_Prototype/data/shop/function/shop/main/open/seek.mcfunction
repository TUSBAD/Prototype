#> shop:shop/main/open/seek

execute as @e[dx=0,type=chest_minecart,tag=shop] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] run tag @s add viewpoint

execute if entity @e[tag=shop,distance=..1] as @e[tag=shop,distance=..1] run function shop:shop/main/open/personal

execute unless entity @e[tag=shop,distance=..1] positioned ^ ^ ^0.1 run function shop:shop/main/open/seek

execute as @e[dx=0] run tag @s remove viewpoint
