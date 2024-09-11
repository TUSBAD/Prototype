#> item_modify:initialize/need_slot_set
# 手に持っているアイテムにマクロに応じた必要スロット数を設定します

$item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{need_slot:$(slot)}}