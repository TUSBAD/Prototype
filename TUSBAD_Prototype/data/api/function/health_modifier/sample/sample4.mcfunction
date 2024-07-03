#> api:health_modifier/sample/sample4
#
# 対象の体力を指定した割合分回復します
#
# @private

# 最大体力の割合で回復したいので設定します
data modify storage tusb_ad:api argument.is_use_percentage set value true
# 割合を指定します(今回は50%分回復)
data modify storage tusb_ad:api argument.heal_percentage set value 50.0f

# function実行
function api:health_modifier/heal/