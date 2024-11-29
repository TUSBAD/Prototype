#> gui:player/tick
#
# GUIに関するプレイヤーの処理
#
# @within advancement gui:player_tick

# 村人見てたら処理を実行
    execute if predicate gui:see_villager run function gui:player/see_villager
# 見てなかったらGUIを消す
    execute unless predicate gui:see_villager run function gui:main/remove/

# 開かれていないGUIが存在したらtpさせる
    execute as @e[tag=GUI.Entity]