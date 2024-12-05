#> gui:main/open/fail
#
# 判定失敗時
#
# @input as player
# @within function gui:main/open/

# トリガーを再有効化
    advancement revoke @s only gui:open_gui

# コンテナを閉じさせる