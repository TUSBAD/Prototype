#> api:health_modifier/sample/sample1
#
# 対象の体力を指定した数値にします
#
# @private

# 指定したい体力を先にstorageにいれます(今回の場合は体力を10に)
data modify storage tusb_ad:api argument.set_health_amount set value 10.0f

# function実行
function api:health_modifier/set_health/