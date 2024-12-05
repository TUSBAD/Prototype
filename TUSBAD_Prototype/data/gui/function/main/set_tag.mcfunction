#> gui:main/set_tag
#
# 自身と自身に紐付いたGUIにtagを付けます
#
# @input as player
# @within function gui:**

# 既に付いてたらreturn
    execute if entity @s[tag=gui.player.this] run return fail

# まず今付いてるtagを消す
    tag @a[tag=gui.player.this] remove gui.player.this
    tag @e[type=chest_minecart,tag=gui.minecart.this] remove gui.minecart.this
    tag @e[type=interaction,tag=gui.interaction.this] remove gui.interaction.this

# 付ける
    tag @s[type=player] add gui.player.this
    execute as @e[type=chest_minecart,tag=gui.minecart] if score @s player_id = @p[tag=gui.player.this] player_id run tag @s add gui.minecart.this
    execute as @e[type=chest_minecart,tag=gui.interaction] if score @s player_id = @p[tag=gui.player.this] player_id run tag @s add gui.interaction.this