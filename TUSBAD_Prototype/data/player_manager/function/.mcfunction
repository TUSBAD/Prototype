#> player_manager:
# プレイヤー周りのセットアップ処理を行う

# 墓の総数カウント
scoreboard objectives add tomb_count dummy

# 墓数計算用スコアボード
scoreboard objectives add tomb_calc dummy

# 墓の総数が０以下なら０に戻す
#execute if score $TombCounter tomb_count matches ..0 run scoreboard players set $TombCounter tomb_count 0
