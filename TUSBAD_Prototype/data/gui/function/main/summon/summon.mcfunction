#> gui:main/summon/summon
#
# 召喚する
#
# @within function gui:main/summon/

# 視線の位置にトロッコとinteractionを召喚
    execute anchored eyes positioned ^ ^ ^ run summon chest_minecart ~ ~ ~ {Tags:[gui.entity,gui.minecart,gui.init,invisible_minecart],Invulnerable:true,NoGravity:true}
    execute anchored eyes positioned ^ ^ ^ run summon interaction ~ ~ ~ {Tags:[gui.entity,gui.interaction,gui.init],width:1,height:1}

# scoreを設定
    scoreboard players operation @e[tag=gui.init] player_id = @s player_id

# tagを外す
    tag @e[tag=gui.init] remove gui.init