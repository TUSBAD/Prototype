#> library:enemy/skill/common/0004.swap
# ID:4
# スキル名：「スワップ」
# 32ブロック以内のランダムなプレイヤーと位置を入れ替える
# カツ丼の思い付きで作成

summon marker ~ ~ ~ {Silent:true,NoGravity:true,Tags:["swap_marker"]}
tag @r[distance=..32] add swap_player
tp @s @a[distance=..32,limit=1,tag=swap_player]
tp @a[distance=..32,limit=1,tag=swap_player] @e[type=marker,tag=swap_marker,limit=1]
kill @e[type=marker,tag=swap_marker]
effect give @a[distance=..32,limit=1,tag=swap_player] resistance 1 4 true
playsound minecraft:block.portal.trigger hostile @a[distance=..32,limit=1,tag=swap_player] ~ ~ ~ 0.75 2 1
playsound minecraft:block.portal.trigger hostile @s ~ ~ ~ 0.75 2 1
particle witch ~ ~ ~ ~ ~ ~ 0 50 force @s
tag @a[tag=swap_player] remove swap_player