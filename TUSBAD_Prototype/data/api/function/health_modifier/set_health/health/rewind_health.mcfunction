#> api:health_modifier/set_health/health/rewind_health
#
# 体力をもとに戻します
#
# @within function api:health_modifier/set_health/health/schedule

# attributeの削除
attribute @s max_health modifier remove helath_setter

# リセット
tag @s remove set_applied