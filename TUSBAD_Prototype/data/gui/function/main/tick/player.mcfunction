#> gui:main/tick/player
#
# GUIに関するプレイヤーの処理
# gui:tickからの実行ではないので注意
#
# @within advancement gui:player_tick

# GUI持ちentityを見てたらGUIを召喚
    execute if predicate gui:see_gui_entity run function gui:main/summon/
# 見てなかったらGUIを消す
    execute unless predicate gui:see_gui_entity run function gui:main/remove/