#> api:health_modifier/set_health/health/
#
# 体力を取得し、値を計算してfunctionに渡します
#
# @input 
#   storage tusb_ad:api argument.set_health_amount (設定したい体力の値,float)
#   storage tusb_ad:api argument.is_use_percentage (最大体力の%を使って体力を設定するかどうか,bool)
#   storage tusb_ad:api argument.set_health_percentage(設定したい体力の割合(%),float)
#   storage tusb_ad:api argument.is_set_absorption (体力ではなく緩衝体力の値を設定するかどうか,bool)
#
# @within function api:health_modifier/set_health/

# データを取得します

# 反映前に実行されているのでそっちの処理に分岐
execute if entity @s[tag=health_modified] run function api:health_modifier/core/remove_previous_data
# 体力データ取得
function api:health_modifier/set_health/health/get_health

# 設定した体力を取得します
execute store result score @s set_health_amount run data get storage tusb_ad:api argument.set_health_amount 100

# 取得したデータを下に体力をどう設定したらいいかを計算します
# 計算式:   - (最大体力 - 設定したい体力)

# IsUseRatio = trueの場合は割合でダメージを与えたいので、計算する
# 割合は%で入力でいいのかなぁ。

# execute if data storage tusb_ad:api {Argument:{IsUsePercentage:true}} run scoreboard players operation @s MaxHealth *= @s Percentage

# ここ、上で体力データ取得した後にやろう、んでそこにあるscoreboard calcを削除する。
execute if data storage tusb_ad:api {argument:{is_use_percentage:true}} run function api:health_modifier/set_health/health/calc_percentage with storage tusb_ad:api argument

# (debug)scoreboardの中身
tellraw @a [{"text":"取得した最大体力(100x): "},{"score": {"name": "@s", "objective": "max_health"}}]
tellraw @a [{"text":"設定したい体力(100x): "},{"score": {"name": "@s", "objective": "set_health_amount"}}]



# execute asで実行してればそれぞれで実行してくれるのでentity storageでなくてもよいかも?わからんけど。
execute store result storage tusb_ad:api return.modify_health double -0.01 run scoreboard players operation @s max_health -= @s set_health_amount


# プレイヤーと他のentityでここに入る値が異なるな、、
tellraw @a [{"text":"減算される体力"}, {"storage": "tusb_ad:api", "nbt": "return.modify_health"}]

# 計算した値を元に呼び出し先でmacro実行し体力差分を設定する

function api:health_modifier/set_health/health/set with storage tusb_ad:api return

# リセット
scoreboard players reset @s max_health
scoreboard players reset @s set_health_amount
data remove storage tusb_ad:api return.modify_health