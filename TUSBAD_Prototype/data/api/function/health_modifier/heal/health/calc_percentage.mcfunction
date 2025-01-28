#> api:health_modifier/heal/health/calc_percentage
#
# 現在の体力最大値と回復割合を元に、回復量を算出します。
#
# @within function api:health_modifier/heal/health/

# 現在の体力最大値を取得し、回復したい割合をかけ、回復量を代入します
$execute store result score @s set_heal_amount run attribute @s max_health get $(heal_percentage)