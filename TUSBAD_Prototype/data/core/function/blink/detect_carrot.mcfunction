# 一旦適当に

#execute as @a if score @s click_carrot matches 1.. run function core:blink/

#scoreboard players set @a click_carrot 0


# スニーク+ジャンプでブリンク
# この際、完全に同時ではなくジャンプは地面に着地するまでにスニークを押したらにする感じ
# 1.21.2以降はキーを取れるようになるので同時押しでいいんだけども。

# とりあえずジャンプとスニークがあればって感じに
execute as @a if score @s is_sneaking matches 1.. if score @s is_jumped matches 1.. run function core:blink/


# スニーク時間リセット
scoreboard players reset @a is_sneaking
# 地面についているならジャンプ回数をリセット
execute as @a if data entity @s {OnGround:1b} run scoreboard players reset @s is_jumped



# プレイヤーのモーションを代入しactionbarに表示
# →1.21.1段階だとtpするとmotionが消える(少なくとも相対座標tpでmotionが消えるのは1.21.2で修正予定らしい)
# そのためこのコマンドは1.21.2来たら見直す必要がある、落下時に慣性消えないとちょっと困る。


#data modify storage tusb_ad:api player_motion set from entity @a[limit=1] Motion

# 表示
#title @a actionbar [{"text":"Motion: "},{"storage":"tusb_ad:api","nbt":"player_motion"}]

# yが0.0784000015258789なら
#execute if data storage tusb_ad:api {player_motion:[0.0d,-0.0784000015258789d,0.0d]} run title @a title "初期値に"