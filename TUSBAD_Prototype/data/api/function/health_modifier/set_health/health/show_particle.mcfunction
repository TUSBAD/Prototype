#> api:health_modifier/set_health/health/show_particle
#
# 削れた分のパーティクルを表示します
#
# @within function api:health_modifier/set_health/health/set

# 設定した体力の値に応じてパーティクルを出す
$particle minecraft:damage_indicator ~ ~ ~ 0 0 0 0.1 $(modify_health) normal @a