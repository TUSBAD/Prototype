#> api:health_modifier/sample/sample3
#
# 対象の体力を指定した数値分回復します
#
# @private

# 回復量を指定します(今回は5回復に)
data modify storage tusb_ad:api argument.heal_amount set value 5.0f
# function実行
function api:health_modifier/heal/