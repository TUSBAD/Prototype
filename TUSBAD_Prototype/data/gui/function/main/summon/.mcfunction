#> gui:main/summon/
#
# 自身に紐づいたGUIを召喚、或いは既にあるものをTPするよ
#
# @within function gui:player/see_villager
# @writes storage gui: test

# Thisを付与
    tag @s add This

# 探索
    data modify storage gui: test set value false
    execute as @e[type=chest_minecart,tag=GUI.Minecart,tag=!GUI.Opened] if score @s player_id = _ player_id store success storage gui: test byte 1 run function gui:main/summon/reset
# いなかったら召喚
    execute if data storage gui: {test:true} run function gui:main/summon/summon

# Thisを外す
    tag @s remove This