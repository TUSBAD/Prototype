summon chest_minecart ~ ~ ~ {Invulnerable:1b,Tags:["shop"]}
execute at @s as @e[tag=shop,sort=nearest,limit=1] run function debug:shop/execute
