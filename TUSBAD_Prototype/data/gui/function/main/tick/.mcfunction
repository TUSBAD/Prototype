#> gui:main/tick/
#
# ワールド側のtick処理
#
# @within tag/function minecraft:tick

# GUIにtickを実行させる
    execute as @e[tag=gui.entity] run function gui:main/tick/gui_minecart