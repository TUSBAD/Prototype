
# いろいろな準備

# スコアリセット
scoreboard players reset blink temp

# 識別用タグ付与
tag @s add used_blink

# marker召喚(起点用)
execute as @s at @s rotated as @e[type=player,tag=used_blink,limit=1] run summon marker ~ ~1 ~ {Tags:["blink"]}

# 呼び出し
function core:blink/condition/