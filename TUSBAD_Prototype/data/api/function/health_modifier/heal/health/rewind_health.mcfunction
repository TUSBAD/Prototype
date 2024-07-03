#> api:health_modifier/heal/health/rewind_health
#
# 体力をもとに戻します
#
# @within function api:health_modifier/heal/health/schedule

# attribute削除
attribute @s generic.max_health modifier remove heal_setter

# 諸々のデータ削除
tag @s remove heal_applied