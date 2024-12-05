#> gui:main/open/check
#
# 開けたチェストトロッコが自分と同じidを持っているかを確かめる
# 
# 自分のplayer_idを二進数変換してadvancementと照合する
# player_idの範囲は1-256
#
# @input
#   as player
#   score @s player_id
#   advancement gui:open_gui
# @writes score $id_check player_id
# @within function gui:main/open/


# 16777216を掛ける
    scoreboard players reset $id_check player_id
    scoreboard players operation $id_check player_id = @s player_id
    scoreboard players operation $id_check player_id *= $2^24 const

# いつもの()オーバーフロー式二進数変換
    # オーバーフローしてたら1、してなかったら0、反転した値がtrueだったら失敗
        execute if score $id_check player_id matches 00.. if entity @s[advancements={gui:open_gui={0.1=true}}] run return fail
        execute if score $id_check player_id matches ..-1 if entity @s[advancements={gui:open_gui={0.0=true}}] run return fail
    # 二倍にする
        scoreboard players operation $id_check player_id += $id_check player_id
    # あとは繰り返す～
        # 2bit
            execute if score $id_check player_id matches 00.. if entity @s[advancements={gui:open_gui={1.1=true}}] run return fail
            execute if score $id_check player_id matches ..-1 if entity @s[advancements={gui:open_gui={1.0=true}}] run return fail
            scoreboard players operation $id_check player_id += $id_check player_id
        # 3bit
            execute if score $id_check player_id matches 00.. if entity @s[advancements={gui:open_gui={2.1=true}}] run return fail
            execute if score $id_check player_id matches ..-1 if entity @s[advancements={gui:open_gui={2.0=true}}] run return fail
            scoreboard players operation $id_check player_id += $id_check player_id
        # 4bit
            execute if score $id_check player_id matches 00.. if entity @s[advancements={gui:open_gui={3.1=true}}] run return fail
            execute if score $id_check player_id matches ..-1 if entity @s[advancements={gui:open_gui={3.0=true}}] run return fail
            scoreboard players operation $id_check player_id += $id_check player_id
        # 5bit
            execute if score $id_check player_id matches 00.. if entity @s[advancements={gui:open_gui={4.1=true}}] run return fail
            execute if score $id_check player_id matches ..-1 if entity @s[advancements={gui:open_gui={4.0=true}}] run return fail
            scoreboard players operation $id_check player_id += $id_check player_id
        # 6bit
            execute if score $id_check player_id matches 00.. if entity @s[advancements={gui:open_gui={5.1=true}}] run return fail
            execute if score $id_check player_id matches ..-1 if entity @s[advancements={gui:open_gui={5.0=true}}] run return fail
            scoreboard players operation $id_check player_id += $id_check player_id
        # 7bit
            execute if score $id_check player_id matches 00.. if entity @s[advancements={gui:open_gui={6.1=true}}] run return fail
            execute if score $id_check player_id matches ..-1 if entity @s[advancements={gui:open_gui={6.0=true}}] run return fail
            scoreboard players operation $id_check player_id += $id_check player_id
        # 8bit
            execute if score $id_check player_id matches 00.. if entity @s[advancements={gui:open_gui={7.1=true}}] run return fail
            execute if score $id_check player_id matches ..-1 if entity @s[advancements={gui:open_gui={7.0=true}}] run return fail
            scoreboard players operation $id_check player_id += $id_check player_id

# ここまで来れてたら成功
    return 1