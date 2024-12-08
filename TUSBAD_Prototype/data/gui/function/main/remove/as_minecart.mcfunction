#> gui:main/remove/as_minecart
#
# トロッコ側を実行者として消滅させます
#
# @within function gui:main/tick/gui_minecart/

# 紐付いたinteractionを削除
    scoreboard players operation _ player_id = @s player_id
    execute as @e[type=interaction,tag=gui.interaction] if score @s player_id = _ player_id run function gui:main/remove/interaction
    scoreboard players reset _ player_id

# ohmydatを解放しscoreを削除
    function #oh_my_dat:release
    scoreboard players reset @s

# アイテムを吐き出しながらkill
    data remove entity @s Items[{components:{"custom_data":{gui_item:{}}}}]
    data modify entity @s DeathLootTable set value "empty"
    kill @s