#> gui:main/summon/reset
#
# GUIをリセットする
#
# @within function gui:main/summon/

# test:true
    data modify storage gui: test set value true

# 視線の位置にtp
    execute at @p[tag=This] anchored eyes run tp @s ^ ^ ^
# Motionを付与
    data modify entity @s Motion set from entity @p[tag=This]
# interactionをtp
    execute at @s as @e[type=interaction,tag=GUI.Interaction] if score @s player_id = _ player_id