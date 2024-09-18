#> api:stat/attack/add
#
# 引数を元に攻撃力を加算します。
#
# @api


# データを確かめ、データがなければ警告
function api:stat/check_data
# データが有るならいれる
execute if data storage tusb_ad:api argument.uuid run function api:stat/calc/attack/add

# リセット
data remove storage tusb_ad:api argument.uuid
data remove storage tusb_ad:api argument.amount
data remove storage tusb_ad:api argument.operation