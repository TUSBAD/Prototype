#> asset_manager:mob/trigger/summon/
# tickで検知し、召喚時のみのスキルを発動させる

$execute as @s[tag=!use_summon_skill] run function asset_manager:mob/trigger/summon/summon_skill {mob:$(mob)}