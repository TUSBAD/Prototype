#> api:health_modifier/heal/
#
# 回復を行います。
#
# @input
#   storage tusb_ad:api argument.heal_amount(回復量,float)
#   storage tusb_ad:api argument.is_over_heal(※未実装:余剰分を緩衝体力として付与するかどうか,bool)
#   storage tusb_ad:api argument.is_use_percentage(回復値指定を%にするかどうか,bool)
#   storage tusb_ad:api argument.heal_percentage(回復したい最大体力の割合(%),float)
#
# @api

# 任意部分はデフォルト引数を追加
# overhealがtrueの場合、overhealする割合もほしい
execute unless data storage tusb_ad:api argument.is_over_heal run data modify storage tusb_ad:api argument.is_over_heal set value false
execute unless data storage tusb_ad:api argument.is_use_percentage run data modify storage tusb_ad:api argument.is_use_percentage set value false

# 引数が揃っているかどうかを確認
execute if data storage tusb_ad:api {argument:{is_use_percentage:false}} unless data storage tusb_ad:api argument.heal_amount run tellraw @a "回復する体力の値が設定されていません！"
execute if data storage tusb_ad:api {argument:{is_use_percentage:true}} unless data storage tusb_ad:api argument.heal_percentage run tellraw @a "回復する体力の割合が設定されていません！"

# 回復function実行
function api:health_modifier/heal/health/

# 引数リセット(引数のリセットは、該当functionが終わるときにいれるようにしたほうがいいかも、あーでもscheduleあるからそういうのは別枠だな)
# でもscheduleあるとはいえ、tagの削除とattribute削除だけだからええか。
data remove storage tusb_ad:api argument.heal_amount
data remove storage tusb_ad:api argument.is_over_heal
data remove storage tusb_ad:api argument.is_use_percentage
data remove storage tusb_ad:api argument.heal_percentage