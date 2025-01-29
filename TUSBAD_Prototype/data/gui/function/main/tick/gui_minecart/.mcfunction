#> gui:main/tick/gui_minecart/
#
# 紐付けられたプレイヤーが存在しなければ消去
#
# @within function gui:main/tick/

# set_tag
    function gui:main/tag/set_as_player

# 紐付けられたプレイヤーが存在しなければアイテムを吐き出してremove
    execute unless entity @a[tag=gui.player.this] run function gui:main/remove/as_minecart

# remove_tag
    function gui:main/tag/remove