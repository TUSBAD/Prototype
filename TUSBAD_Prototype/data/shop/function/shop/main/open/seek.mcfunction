#> shop:shop/main/open/seek

#識別用のタグを付与
execute as @e[dx=0,type=chest_minecart,tag=shop] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] run tag @s add viewpoint

execute if entity @e[tag=viewpoint,dx=0] as @e[tag=viewpoint,dx=0] run function shop:shop/main/open/personal with storage shop:

#視点から逆算して対象のチェストロッコでシークを実行
execute if score @s temp matches ..50 unless entity @e[tag=viewpoint] positioned ^ ^ ^0.1 run function shop:shop/main/open/seek

execute as @e[dx=0] run scoreboard players add @s temp 1

#識別用のタグの削除
execute as @e[dx=0] run tag @s remove viewpoint

execute unless score @s temp matches ..50 run scoreboard players set @s temp 0