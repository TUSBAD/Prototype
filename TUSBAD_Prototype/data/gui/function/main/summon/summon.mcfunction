#> gui:main/summon/summon
#
# 召喚する
#
# @within function gui:main/summon/

# 視線の位置にトロッコとinteractionを召喚
    execute anchored eyes positioned ^ ^ ^ run summon chest_minecart ~ ~ ~ {Tags:[GUI.Entity,GUI.Minecart,GUI.Init,InvisibleMinecart],Invulnerable:true,NoGravity:true}
    execute anchored eyes positioned ^ ^ ^ run summon interaction ~ ~ ~ {Tags:[GUI.Entity,GUI.Interaction,GUI.Init],width:1,height:1}

# scoreを設定
    scoreboard players operation @e[tag=GUI.Init] player_id = @s player_id

# tagを外す
    tag @e[tag=GUI.Init] remove GUI.Init