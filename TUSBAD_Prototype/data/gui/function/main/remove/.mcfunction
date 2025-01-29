#> gui:main/remove/
#
# 紐づいたGUIを安全に消滅させる
#
# @input as player
# @within function gui:**

# set_tag
    function gui:main/tag/set_as_player

# トロッコ
    execute as @e[type=chest_minecart,tag=gui.minecart.this] run function gui:main/remove/minecart
# interaction
    execute as @e[type=interaction,tag=gui.interaction.this] run function gui:main/remove/interaction

# remove_tag
    function gui:main/tag/remove