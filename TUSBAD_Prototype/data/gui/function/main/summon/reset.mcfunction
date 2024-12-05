#> gui:main/summon/reset
#
# GUIをリセットする
#
# @input as gui.minecart
# @within function gui:main/summon/

# test:true
    data modify storage gui: test set value true

# 視線の位置にtp
    execute at @p[tag=gui.player.this] anchored eyes run tp @s ^ ^ ^
# Motionを付与
    data modify entity @s Motion set from entity @p[tag=gui.player.this]
# interactionをtp
    execute at @s as @e[type=interaction,tag=gui.interaction.this] run tp @s ~ ~ ~