#> gui:main/remove/minecart
#
# トロッコ側の処理
#
# @input as gui.minecart
# @within function gui:main/remove/

# ohmydatを解放
    function #oh_my_dat:release
# scoreを消す
    scoreboard players reset @s
# nbtを変更
    data merge entity @s {Items:[],DeathLootTable:"empty"}
# kill
    kill @s