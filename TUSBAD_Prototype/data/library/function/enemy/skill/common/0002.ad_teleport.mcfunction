#> library:enemy/skill/common/0002.ad_teleport
# ID:2
# スキル名：「亜空間転移」
# 最も近くにいるプレイヤーの座標の１つ上にテレポートする（距離制限なし）
# TUSBAD0.5.0から移植した処理

### 元処理
#execute as @e[tag=akuu] at @s run execute as @e[dx=0,tag=akuu,score_MobCastTime_min=5,score_MobCastTime=9,c=1] at @s run me 「§3§l隙だらけだ§r」
#execute as @e[tag=akuu] at @s run execute as @e[dx=0,tag=akuu,score_MobCastTime_min=5,score_MobCastTime=9,c=1] at @s run tp @e[dx=0,c=1] @a[c=1]
#execute as @e[tag=akuu] at @s run execute as @e[dx=0,tag=akuu,score_MobCastTime_min=5,score_MobCastTime=9,c=1] at @s run effect give @e[c=1] minecraft:resistance 4 3 true
#execute as @e[tag=akuu] at @s run execute as @e[dx=0,tag=akuu,score_MobCastTime_min=5,score_MobCastTime=9,c=1] at @s run effect give @e[c=1] minecraft:levitation 3 1 true
#execute as @e[tag=akuu] at @s run execute as @e[dx=0,tag=akuu,score_MobCastTime_min=5,score_MobCastTime=9,c=1] at @s run playsound block.portal.travel hostile @a[r=64] ~ ~ ~ 0.75 2 1
#execute as @e[tag=akuu] at @s run execute as @e[dx=0,tag=akuu,score_MobCastTime_min=5,score_MobCastTime=9,c=1] at @s run particle witch ~ ~ ~ 1 1 1 1 50 force @e[c=1]


### 現処理
#ログの部分（発動時メッセージ）は各自で雰囲気を出してください。
#me は§5§l§n亜空間転移§rを発動した！
tp @s @p
effect give @p resistance 1 4
effect give @s levitation 2 0
particle witch ~ ~ ~ ~ ~ ~ 0 20 force @a
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.0 1 0.0

