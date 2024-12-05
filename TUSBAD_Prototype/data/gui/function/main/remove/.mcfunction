#> gui:main/remove/
#
# 紐づいたGUIを安全に消滅させる
# 実行者はプレイヤー
#
# @within function gui:**

# set_tag
    function gui:main/set_tag

# トロッコ
    execute as @e[type=chest_minecart,tag=gui.minecart.this] run function gui:main/remove/minecart
# interaction
    execute as @e[type=interaction,tag=gui.interaction.this] run function gui:main/remove/interaction

# remove_tag
    function gui:main/remove_tag