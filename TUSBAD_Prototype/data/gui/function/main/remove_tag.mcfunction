#> gui:main/remove_tag
#
# 自身と自身に紐付いたGUIにtagを付けます
#
# @within function gui:**

# tagを消す
    tag @a[tag=gui.player.this] remove gui.player.this
    tag @e[type=chest_minecart,tag=gui.minecart.this] remove gui.minecart.this
    tag @e[type=interaction,tag=gui.interaction.this] remove gui.interaction.this