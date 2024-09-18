#> api:load



# 定数
scoreboard objectives add const dummy

scoreboard players set $int_max const 2147483647
scoreboard players set $int_min const -2147483648
scoreboard players set $system_max const 99999999
scoreboard players set $system_min const -99999999
scoreboard players set $minus const -1
scoreboard players set $1 const 1
scoreboard players set $10 const 10
scoreboard players set $100 const 100
scoreboard players set $1000 const 1000
scoreboard players set $10000 const 10000
scoreboard players set $100000 const 100000
scoreboard players set $1000000 const 1000000
scoreboard players set $10000000 const 10000000
scoreboard players set $100000000 const 100000000
scoreboard players set $3 const 3

# 取得用

scoreboard objectives add max_health dummy {"text":"エンティティの最大体力(0.01HP)"}
scoreboard objectives add current_health dummy {"text":"エンティティの現在体力(0.01HP)"}
scoreboard objectives add absorption_amount dummy {"text":"エンティティの緩衝体力値(0.01HP)"}
scoreboard objectives add max_absorption_amount dummy {"text":"エンティティの最大緩衝体力値(0.01HP)"}
scoreboard objectives add percentage dummy {"text":"割合取得用(0.01%)"}

# temporary
scoreboard objectives add temp dummy

# backup

# 変数名はbackupかstored,unapply?何がいいかな

# BackupMaxHealthいらんかも
scoreboard objectives add backup_max_health dummy
scoreboard objectives add backup_current_health dummy
scoreboard objectives add backup_absorption_amount dummy
scoreboard objectives add backup_max_absorption_amount dummy

# 入力した体力を計算するためのスコアボード
scoreboard objectives add set_health_amount dummy
scoreboard objectives add set_heal_amount dummy



# calc計算用スコアボード

scoreboard objectives add calc1 dummy
scoreboard objectives add calc2 dummy