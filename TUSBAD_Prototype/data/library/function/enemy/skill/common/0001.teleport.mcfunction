#> library:enemy/skill/common/0001.teleport
# ID:1
# スキル名：「テレポート」
# 近くにいる３２ブロック以内のプレイヤーの座標の１つ上にテレポートする
# ※TUSBv12Rより移植した処理
# 
# Copyright © 2022 赤石愛
# This software is released under the MIT License, see LICENSE.

#ログの部分（発動時メッセージ）は各自で雰囲気を出してください。
#execute at @p[gamemode=!spectator,distance=..32] run title @a[distance=..32] actionbar [{"selector":"@s"}," はワープした！"]
execute at @p[gamemode=!spectator,distance=..32] run tp @s ~ ~1 ~