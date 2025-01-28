
# macroで読み取った値を元に体力をセットします


$attribute @s minecraft:max_absorption modifier add ee3b6c11-8fcb-48ba-a279-e8458492890c "HelathSetter" $(Output) add

# 回復して指定した体力にする
# (該当mobがアンデットがどうか判定する必要あり+エフェクトの値254でいいかの確認)
#effect give @s instant_health 1 252 true

tag @s add Applyed

#damage @s 0.0000000000000000000000000000000000000000000001

# 体力をもとに戻す
schedule function api:health_modifier/set_health/health/schedule 2t