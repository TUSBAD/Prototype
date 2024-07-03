#> api:health_modifier/set_health/health/set
#
# macroで読み取った値を元に体力をセットします
#
# @input storage tusb_ad:api Output
#
# @within function api:health_modifier/set_health/health/


# もし設定体力が0だったらkillし、それ移行の処理をふっとばす
execute if score @s set_health_amount matches 0 run kill @s
execute if score @s set_health_amount matches 0 run return fail

$attribute @s minecraft:generic.max_health modifier add helath_setter $(modify_health) add_value

# ダメージ受けた演出をいれる(AECじゃないと1tick無敵無理だからこっちかなぁ)


# 殴ったときに出るハート量もやらないとな、、(変更した体力反転して+ならその分だけ与える)
# ちょっと邪道だけど、正負反転させる前の値がMaxHealthに入ってるからそれを使う、わかりにくすぎたら変えます。
# あーでもこれ、particle出すときにそのまま使うから、だめだこりゃ


# ここ、実際に減らした量が反映されてなくて、常に同じパーティクル出るようになってるからそこは修正しよう
# particle一旦おやすみ、与えるダメージ量多すぎて邪魔になる可能性が出てきた
# modifyhealthを正負反転
#execute store result storage tusb_ad:api return.modify_health double -1 run data get storage tusb_ad:api return.modify_health
# 体力変位を参照し、0以上ならパーティクルを出す
#execute if score @s max_health matches 0.. run function api:health_modifier/set_health/health/show_particle with storage tusb_ad:api return


# 回復して指定した体力にする
# アンデットかどうかを判定し、それぞれ分岐するよ
execute if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 252 true
execute unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 252 true

# 識別タグ付与
tag @s add health_modified
tag @s add set_applied

# 体力をもとに戻す
schedule function api:health_modifier/set_health/health/schedule 2t append