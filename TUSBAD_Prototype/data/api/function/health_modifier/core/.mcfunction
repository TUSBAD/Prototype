#> api:health_modifier/core/
#
# 要らなくなったタグを消す
#
# @within function api:tick

# 変更タグが全てなければhealth_modifiedタグを消す
execute as @a[tag=!heal_applied,tag=!set_applied] run tag @s remove health_modified