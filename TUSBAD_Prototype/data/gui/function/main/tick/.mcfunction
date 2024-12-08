#> gui:main/tick/
#
# ワールド側のtick処理
#
# @within tag/function minecraft:tick

# GUIトロッコのtick処理
    execute as @e[tag=gui.minecart] run function gui:main/tick/gui_minecart/

# 開いているGUIトロッコのtick処理
    execute as @e[tag=gui.minecart.opened] run function gui:main/tick/gui_minecart/opened