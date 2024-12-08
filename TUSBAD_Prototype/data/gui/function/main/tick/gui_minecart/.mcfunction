#> gui:main/tick/gui_minecart/a
#
# 紐付けられたプレイヤーが存在しなければ消去
#
# @within function gui:main/tick/

# this
    tag @s add gui.minecart.this

# scoreが同じプレイヤーが存在しなければtest:trueになる
    data modify storage gui: test set value false
    execute as @a if score @s player_id = @e[type=chest_minecart,tag=gui.minecart.this,limit=1] player_id run data modify storage gui: test set value true

# いないのならアイテムを吐き出してremove
    execute unless data storage gui: {test:true} run function gui:main/remove/as_minecart