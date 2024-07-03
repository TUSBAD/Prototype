#> api:health_modifier/heal/health/get_absorp
#
# 緩衝体力を取得し、スコアボードに代入します
#
# @within function api:health_modifier/heal/health/

# 緩衝体力を取得しデータをscoreboardに代入

# 最大値も必要説ある、だって緩衝体力減ってもエフェクトの付与中は最大値減らんからね
# →エフェクト付与なら勝手につくけど、エフェクト付与じゃない場合は勝手に付かず、緩衝体力の最大値を変更しておかないと一度ダメージを受けると緩衝体力の値が0になる

# 緩衝体力をスコアボードに代入
execute store result score @s absorption_amount run data get entity @s AbsorptionAmount 100

# (debug)
tellraw @a [{"text":"取得した緩衝体力(100x): "},{"score": {"name": "@s", "objective": "absorption_amount"}}]