#> gui:main/tag/set_as_player
#
# 自身(gui.minecart)と紐付いたプレイヤーにtagを付ける
#
# @within function gui:**

# 実行者がgui.minecartでなければエラーメッセージを吐く
    execute unless entity @s[tag=gui.minecart] run return run tellraw @a {"translate": "%1$s %2$s", "with": [{"text": "ERROR >>", "color": "red"}, {"text": "実行者はプレイヤーである必要があります", "color": "red"}]}

# 既に付いてたらreturn
    execute if entity @s[tag=gui.player.this] run return fail

# まず今付いてるtagを消す
    tag @a[tag=gui.player.this] remove gui.player.this
    tag @e[type=chest_minecart,tag=gui.minecart.this] remove gui.minecart.this
    tag @e[type=interaction,tag=gui.interaction.this] remove gui.interaction.this

# 付ける
    tag @s add gui.minecart.this
    execute as @a if score @s player_id = @n[tag=gui.minecart.this] player_id run tag @s add gui.player.this
    execute as @e[type=interaction,tag=gui.interaction] if score @s player_id = @n[type=minecart,tag=gui.minecart.this] player_id run tag @s add gui.interaction.this