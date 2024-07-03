#> api:health_modifier/sample/sample2
#
# 対象の体力を指定した割合にします
#
# @private

# 最大体力の割合で体力を設定したいので設定します
data modify storage tusb_ad:api argument.is_use_percentage set value true
# 割合を指定します(今回は体力の75%に)
data modify storage tusb_ad:api argument.set_health_percentage set value 75.0f

# function実行
function api:health_modifier/set_health/