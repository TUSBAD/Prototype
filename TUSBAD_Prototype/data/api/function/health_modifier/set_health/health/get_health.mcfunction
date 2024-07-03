#> api:health_modifier/set_health/health/get_health
#
# エンティティの体力を取得し、スコアボードに代入します
#
# @within function api:health_modifier/set_health/health/

# スコアボードに代入
execute store result score @s max_health run attribute @s generic.max_health get 100