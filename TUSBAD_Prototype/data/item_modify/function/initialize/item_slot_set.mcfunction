#> item_modify:initialize/item_slot_set
# 手に持っているアイテムにマクロに応じた空きスロット数を設定します

$item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{slot_left:$(slot)}}

$item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{max_slot:$(slot)}}