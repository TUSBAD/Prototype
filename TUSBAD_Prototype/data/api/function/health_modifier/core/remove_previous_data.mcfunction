#> api:health_modifier/core/remove_previous_data
#
# 重複するattributeの削除
#
# @within function api:health_modifier/heal/health/
# @within function api:health_modifier/set_health/health/


# health_modifierに共通するattributeの削除を行う部分
# 共通処理で実行できるのでここに格納しています

# attributeを削除する

# set_healthの
attribute @s generic.max_health modifier remove health_setter
# healの
attribute @s generic.max_health modifier remove heal_setter
# damageの(いらないか?)