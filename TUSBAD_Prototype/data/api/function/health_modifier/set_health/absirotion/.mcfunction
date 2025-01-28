# 未完

# てかabsorbいらなくね?

# データを取得します

# 最大体力はdouble
execute store result storage tusb_ad:api max_absorption double 100 run attribute @s max_absorption get 1
# スコアボードに代入
execute store result score @s max_absorption_amount run data get storage tusb_ad:api max_absorption
# 現在体力はfloat
# execute store result storage tusb_ad:api CurrentHealth float 100 run data get entity @s Health

# 体力を9.5に
scoreboard players set @s set_health_amount 950

# execute store result score @s AbsorptionAmount run scoreboard players get @s CurrentHealth


# 取得したデータを下に体力をどう設定したらいいかを計算します

# 計算式:   - (最大体力 - 設定したい体力)

execute store result storage tusb_ad:api Output double -0.01 run scoreboard players operation @s max_absorption_amount -= @s set_health_amount

# これで無理なら看板とかに入れてinterpretしてデータ取得か?


# 計算した値を元に呼び出し先でmacro実行しattributeを設定する
# 設定した後に体力を回復し、設定したattributeを削除する。

function api:health_modifier/set_health/health/set with storage tusb_ad:api

# 各種リセット

