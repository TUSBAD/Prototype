#> gui:main/open/success
#
# 判定成功時
#
# @input as player
# @within function gui:main/open/

# set_tag
    function gui:main/set_tag

# トロッコに開いたtagを付ける
    tag @e[type=chest_minecart,tag=gui.minecart.this,limit=1] add gui.minecart.opened

# 要らないっぽい？
    # 頭に検知用アイテムを被せる
        # 何も被ってなかったら石ボタン
            # execute unless items entity @s armor.head * run item replace entity @s armor.head with stone_button[custom_data={close_detector_item:true},enchantments={vanishing_curse:1,binding_curse:1},custom_name='{"translate": "ad_prototype:gui.close_detector_item", "fallback": "CloseDetectorItem"}']
    # 被ってたらmodify
            # execute if items entity @s armor.head * run item modify entity @s armor.head gui:close_detector_tag_apply

# GUIの種類に応じた共通処理を実行
    execute if entity @e[type=chest_minecart,tag=gui.minecart.this,tag=gui.shop,limit=1] run function gui:shop/open/