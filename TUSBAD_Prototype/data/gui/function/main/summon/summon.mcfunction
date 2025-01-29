#> gui:main/summon/summon
#
# gui.entityを召喚する
#
# @input as player
# @within function gui:main/summon/

# 視線の位置にトロッコとinteractionを召喚
    execute anchored eyes positioned ^ ^ ^ run summon chest_minecart ~ ~ ~ {Tags:[gui.entity,gui.minecart,gui.init],Invulnerable:true,NoGravity:true,CustomDisplayTile:true,DisplayState:{Name:"air"}}
    execute anchored eyes positioned ^ ^ ^ run summon interaction ~ ~ ~ {Tags:[gui.entity,gui.interaction,gui.init],width:1,height:1}

# scoreを設定
    scoreboard players operation @e[tag=gui.init] player_id = @s player_id

# tagを外す
    tag @e[tag=gui.init] remove gui.init