#> gui:main/summon/
#
# 自身に紐づいたGUIを召喚、或いは既にあるものをTPするよ
#
# @input as player
# @writes storage gui: test
# @within function gui:main/tick/player


# set_tag
    function gui:main/set_tag

# 探索
    data modify storage gui: test set value false
    execute as @e[type=chest_minecart,tag=gui.minecart.this] run function gui:main/summon/reset
# いなかったら召喚
    execute if data storage gui: {test:true} run function gui:main/summon/summon

# remove_tag
    function gui:main/remove_tag