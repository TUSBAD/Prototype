#> api:health_modifier/heal/health/get_data
#
# データ取得用function
#
# @within function api:health_modifier/heal/health/


# 回復量を取得します
execute store result score @s set_heal_amount run data get storage tusb_ad:api argument.heal_amount 100

# 最大体力を取得
execute store result score @s max_health run attribute @s max_health get 100

# 現在体力を取得
execute store result score @s current_health run data get entity @s Health 100