#> library:enemy/skill/common/0003.ad_teleport128
# ID:3
# スキル名：「異空間転送」
# 128ブロック以内のプレイヤー全員を自身の座標に集合させる
# TUSBAD0.5.0から移植した処理

### 元処理
#/execute @e[tag=ikuu] ~ ~ ~ /execute @e[dx=0,tag=ikuu,score_MobCastTime_min=10,score_MobCastTime=14,c=1] ~ ~ ~ /me 「§5§l何処へ行くつもりだ？§r」
#/execute @e[tag=ikuu] ~ ~ ~ /execute @e[dx=0,tag=ikuu,score_MobCastTime_min=10,score_MobCastTime=14,c=1] ~ ~ ~ /tp @a[r=128] @e[r=128,c=1,type=!Player,tag=ikuu]
#/execute @e[tag=ikuu] ~ ~ ~ /execute @e[dx=0,tag=ikuu,score_MobCastTime_min=10,score_MobCastTime=14,c=1] ~ ~ ~ /effect @a[r=4] minecraft:resistance 1 4 true
#/execute @e[tag=ikuu] ~ ~ ~ /execute @e[dx=0,tag=ikuu,score_MobCastTime_min=10,score_MobCastTime=14,c=1] ~ ~ ~ /effect @a[r=32] minecraft:blindness 3 100 false
#/execute @e[tag=ikuu] ~ ~ ~ /execute @e[dx=0,tag=ikuu,score_MobCastTime_min=10,score_MobCastTime=14,c=1] ~ ~ ~ /playsound block.portal.trigger hostile @a[r=64] ~ ~ ~ 0.75 2 1
#/execute @e[tag=ikuu] ~ ~ ~ /execute @e[dx=0,tag=ikuu,score_MobCastTime_min=10,score_MobCastTime=14,c=1] ~ ~ ~ /particle witchMagic ~ ~ ~ 1 1 1 1 50 force @e[c=1]

### 現処理
#ログの部分（発動時メッセージ）は各自で雰囲気を出してください。
#me は§5§l§n異空間転送§rを発動した！
tp @a[distance=..128] @s
effect give @p resistance 1 4 true
effect give @p blindness 3 100 false
#ここの盲目は暗闇に変える？
playsound minecraft:block.portal.trigger hostile @a[distance=..128] ~ ~ ~ 0.75 2 1
particle witch ~ ~ ~ ~ ~ ~ 0 50 force @s