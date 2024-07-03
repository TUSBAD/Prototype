#> api:health_modifier/heal/health/
#
# 対象の体力を回復します。
#
# @input
#   storage tusb_ad:api argument.heal_amount(回復量,float)
#   storage tusb_ad:api argument.is_over_heal(※未実装:余剰分を緩衝体力として付与するかどうか,bool)
#   storage tusb_ad:api argument.is_use_percentage(回復値指定を%にするかどうか,bool)
#   storage tusb_ad:api argument.heal_percentage(回復したい最大体力の割合(%),float)
#
# @within function api:health_modifier/heal/


# もし、すでにattributeがあるなら一旦リセットします
execute if entity @s[tag=health_modified] run function api:health_modifier/core/remove_previous_data
# データを取得します
function api:health_modifier/heal/health/get_data

# 現在体力と最大体力を比べて、現在体力のほうが大きいなら、現在体力の値を最大体力にする(バグ対策、1.21以降はこれなくてもいいかも?)
execute if score @s current_health > @s max_health run scoreboard players operation @s current_health = @s max_health

# is_over_healがtrueなら緩衝体力の値も持ってくる
# 注意、AbsorptionAmountがプレイヤーもちゃんと適応されるのかどうかについて調べること→適応された
# 緩衝体力の最大値は多分必要ない。
execute if data storage tusb_ad:api {argument:{is_over_heal:true}} run function api:health_modifier/heal/health/get_absorp

# 割合の場合は回復量を計算する
# 現在体力 * 回復割合
execute if data storage tusb_ad:api {argument:{is_use_percentage:true}} run function api:health_modifier/heal/health/calc_percentage with storage tusb_ad:api argument


# 回復量 + 現在体力が最大体力を超えている場合は、回復量を 最大体力 - 現在体力の値にする
# ここ工夫して計算量減らせないかなー

# 一時代入
scoreboard players operation temp_heal_amount temp = @s set_heal_amount
# 回復量+現在体力を出す
execute store result score heal_health_sum temp run scoreboard players operation temp_heal_amount temp += @s current_health

# 回復量 + 現在体力が最大体力を超えていたら回復量を最大体力-現在体力の値にする
# 先に一時代入
scoreboard players operation temp_max_health temp = @s max_health
# 比較し実行
execute if score heal_health_sum temp > temp_max_health temp run execute store result score @s set_heal_amount run scoreboard players operation temp_max_health temp -= @s current_health

# 余計なscore_holder削除
scoreboard players reset temp_heal_amount
scoreboard players reset heal_health_sum
scoreboard players reset temp_max_health

# 回復量取得してOverHealの割合をかけて付与量をstorageにいれる(別にscoreboardにいれる必要がないので)


# 回復力を取得し、体力が最大になって回復されなかった分を計算した値を用意する。
# 緩衝体力の最大値と緩衝体力の値を取得する
# 余剰回復に対し、OverHealの割合を掛けて緩衝体力の付与量を取得する
# 取得できたら、 - 緩衝体力の最大値 + (現在の緩衝体力の値 + 緩衝体力の付与量)し、その値だけ最大体力attributeを加算する 

# と思ったんだけどエフェクトで付与する場合は勝手に最大値変わるし、そうでないなら最大緩衝体力をどのタイミングで減らすか問題が

# (debug)scoreboardの中身
tellraw @a [{"text":"取得した最大体力(100x): "},{"score": {"name": "@s", "objective": "max_health"}}]
tellraw @a [{"text":"取得した現在体力(100x): "},{"score": {"name": "@s", "objective": "current_health"}}]
tellraw @a [{"text":"回復量(100x): "},{"score": {"name": "@s", "objective": "set_heal_amount"}}]


# 回復量を計算

# 計算式: - (最大体力 - (現在体力 + 回復量))

# まず現在体力+回復量を計算
scoreboard players operation @s current_health += @s set_heal_amount
# 最大体力 - (現在体力 + 回復量)
scoreboard players operation @s max_health -= @s current_health

# 変化HPをstorageに代入
execute store result storage tusb_ad:api return.modify_health double -0.01 run scoreboard players get @s max_health

tellraw @a [{"text":"returnの値"},{"nbt":"return.modify_health","storage": "tusb_ad:api"}]

# 計算したので回復を実行
function api:health_modifier/heal/health/heal with storage tusb_ad:api return

# リセット
scoreboard players reset @s set_heal_amount
scoreboard players reset @s max_health
scoreboard players reset @s current_health
scoreboard players reset @s absorption_amount
data remove storage tusb_ad:api return.modify_health