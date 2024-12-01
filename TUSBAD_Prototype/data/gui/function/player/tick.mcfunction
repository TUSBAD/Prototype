#> gui:player/tick
#
# GUIに関するプレイヤーの処理
#
# @within advancement gui:player_tick

# player_idを参照しやすく
    scoreboard players operation _ player_id = @s player_id

# 村人見てたら処理を実行
    execute if predicate gui:see_gui_entity run function gui:player/see_gui_entity
# 見てなかったらGUIを消す
    execute unless predicate gui:see_gui_entity run function gui:main/remove/