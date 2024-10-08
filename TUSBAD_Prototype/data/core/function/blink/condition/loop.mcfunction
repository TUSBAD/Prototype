

# 前のmarker基準^0.1じゃだめかな
# 実行者指定がややこしいなこれ

# というかなんかscheduleされてないｗ

#execute rotated as @e[type=player,tag=used_blink,limit=1] run summon marker ^ ^ ^0.1 {Tags:["blink"]}
summon marker ^ ^ ^0.1 {Tags:["blink"]}

# 既存markerのkillどうしようかこれ
# @nでkillはあり
kill @n[type=marker,tag=blink]

# えんちちデータにプレイヤーの向きを代入する
execute as @e[type=marker,tag=blink] run data modify entity @s Rotation set from entity @a[tag=used_blink, limit=1] Rotation

# ビジュアル的なパーティクル追加
particle minecraft:composter ~ ~ ~ 0 0 0 0.01 100

# カウント増加
scoreboard players add blink temp 1


# 該当する場所にブロックがあるかどうか
# あれば分岐
execute as @e[type=marker,tag=blink] at @s unless block ~ ~ ~ air run function core:blink/condition/blocked


# -1なら終了(これは既に終了処理をしている)
execute if score blink temp matches -1 run return fail

# 50なら終了
execute if score blink temp matches 50 run function core:blink/condition/success

# 再起
execute if score blink temp matches ..49 run function core:blink/condition/before_loop