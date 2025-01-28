#> api:health_modifier/heal/health/heal
#
# 体力を回復します
#
# @within function api:health_modifier/heal/health/

# overheal処理


# 体力をセット
$attribute @s minecraft:max_health modifier add heal_setter $(modify_health) add_value


# 回復して指定した体力にする
# アンデットかどうかを判定し、それぞれ分岐するよ
execute if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 252 true
execute unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 252 true

# 識別タグ付与
tag @s add health_modified
tag @s add heal_applied

# 体力をもとに戻す
schedule function api:health_modifier/heal/health/schedule 2t append