#> player_manager:
# プレイヤー周りのセットアップ処理を行う

# 墓の総数カウント
scoreboard objectives add TombCount dummy

# 墓数計算用スコアボード
scoreboard objectives add TombCalc dummy

# 墓の総数が０以下なら０に戻す
#execute if score $TombCounter TombCount matches ..0 run scoreboard players set $TombCounter TombCount 0
