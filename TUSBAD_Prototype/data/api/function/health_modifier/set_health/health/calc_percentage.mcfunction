#> api:health_modifier/set_health/health/calc_percentage
#
# 現在の体力最大値と設定割合を元に、設定体力を算出します。
#
# @within function api:health_modifier/set_health/health/

# 現在の体力最大値を取得し、設定したい体力の割合をかけ、設定体力を代入します
$execute store result score @s set_health_amount run attribute @s minecraft:generic.max_health get $(set_health_percentage)