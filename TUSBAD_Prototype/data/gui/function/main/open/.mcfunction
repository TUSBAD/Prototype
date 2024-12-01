#> gui:main/open/
#
# GUIを開いた時の処理
#
# @within advancement gui:open_gui

# 頭に検知用アイテムを被せる
    # 何も被ってなかったら石ボタン
        execute unless items entity @s armor.head * run item replace entity @s armor.head with stone_button[custom_data={close_detector_item:true},enchantments={vanishing_curse:1,binding_curse:1},custom_name='{"translate": "gui.close_detector_item", "fallback": "CloseDetectorItem"}']
    # 被ってたらmodify
        execute if items entity @s armor.head * run item modify entity @s armor.head gui:close_detector_item_apply