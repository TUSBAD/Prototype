#> gui:main/open/
#
# GUIを開いた時の処理
#
# @input as player
# @within advancement gui:open_gui

# idを確認
    execute store success storage gui: test byte 1 run function gui:main/open/check

# 違ったら失敗処理
    execute if data storage gui: {test:false} run function gui:main/open/fail

# 合ってたら成功処理
    execute if data storage gui: {test:true} run function gui:main/open/success