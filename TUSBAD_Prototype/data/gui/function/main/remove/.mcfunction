#> gui:main/remove/
#
# 紐づいたGUIを安全に消滅させる
# 実行者はプレイヤー
#
# @within function gui:**

# Thisを付与
    tag @s add This

# トロッコ
    execute as @e[type=chest_minecart,tag=GUI.Minecart] if score @s player_id = @p[tag=This] player_id run function gui:main/remove/minecart
# interaction
    execute as @e[type=interaction,tag=GUI.Interaction] if score @s player_id = @p[tag=This] player_id run function gui:main/remove/interaction

# Thisを削除
    tag @s remove This