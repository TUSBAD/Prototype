#> gui:main/close/
#
# GUI閉じた時の処理
#
# @input as player
# @within advancement gui:close_gui

# ohmydat
    function #oh_my_dat:please

# インベントリが変わってるかどうかチェック
    execute store success storage gui: test byte 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].gui.close_detector.Inventory set from entity @s Inventory
# 変わってたらadvancementを剥奪してreturn
    execute if data storage gui: {test:true} run advancement revoke @s only gui:close_gui
    execute if data storage gui: {test:true} run return fail

# set_tag
    function gui:main/tag/set_as_player

# アイテムを返却
    function gui:main/close/return_item

# GUIの種類に応じた共通処理を実行
    execute if entity @e[type=chest_minecart,tag=gui.minecart.this,tag=gui.shop,limit=1] run function gui:shop/close/


# 要らないっぽい？
    # 仮アイテムを削除
        # execute if items entity @s armor.head stone_button[custom_data={close_detector_item:true}] run item replace entity @s armor.head with air

    # 仮nbtを削除
        # execute unless items entity @s armor.head stone_button[custom_data={close_detector_item:true}] unless items entity @s armor.head *[custom_data={close_detector_item:true}] run function gui:main/close/head_replace

# トロッコのtagを削除し、remove
    tag @e[type=chest_minecart,tag=gui.minecart.this,tag=gui.minecart] remove gui.minecart.this
    function gui:main/remove/

# トリガーを再有効化
    advancement revoke @s only gui:open_gui
    advancement revoke @s only gui:close_gui