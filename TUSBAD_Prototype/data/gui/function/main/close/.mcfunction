#> gui:main/close/
#
# GUI閉じた時の処理
#
# @within advancement gui:close_gui

# 仮アイテムを削除
    execute if items entity @s armor.head stone_button[custom_data={close_detector_item:true}] run item replace entity @s armor.head with air

# 仮nbtを削除
    execute unless items entity @s armor.head stone_button[custom_data={close_detector_item:true}] unless items entity @s armor.head *[custom_data={close_detector_item:true}] run function gui:main/close/head_replace

# トリガーを再有効化
    advancement revoke @s only gui:open_gui
    advancement revoke @s only gui:close_gui