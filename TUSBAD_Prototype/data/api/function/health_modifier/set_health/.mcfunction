#> api:health_modifier/set_health/
#
# 入力された値に対象の現在体力を変更するapiです。
# もし、設定したい体力が0の場合は対象をkillします。
# @input 
#   storage tusb_ad:api argument.set_health_amount (設定したい体力の値,float)
#   storage tusb_ad:api argument.is_use_percentage (最大体力の%を使って体力を設定するかどうか,bool)
#   storage tusb_ad:api argument.set_health_percentage(設定したい体力の割合(%),float)
#   storage tusb_ad:api argument.is_set_absorption (体力ではなく緩衝体力の値を設定するかどうか,bool)
#
# @api

# カスタムdeath message未対応。0に設定したら素直にkilledがでます。

# 引数が足りているかどうかのチェック

# 任意部分はデフォルト引数を追加
execute unless data storage tusb_ad:api argument.is_use_percentage run data modify storage tusb_ad:api argument.is_use_percentage set value false
execute unless data storage tusb_ad:api argument.is_set_absorption run data modify storage tusb_ad:api argument.is_set_absorption set value false
# 足りないのはエラーを出す
execute if data storage tusb_ad:api {argument:{is_use_percentage:false}} unless data storage tusb_ad:api argument.set_health_amount run tellraw @a "設定したい体力の値が設定されていません！"
execute if data storage tusb_ad:api {argument:{is_use_percentage:true}} unless data storage tusb_ad:api argument.set_health_percentage run tellraw @a "設定したい体力の割合が設定されていません！"

# 設定に応じてfunction実行
execute if data storage tusb_ad:api {argument:{is_set_absorption:false}} run function api:health_modifier/set_health/health/

# 引数リセット
data remove storage tusb_ad:api argument.set_health_amount
data remove storage tusb_ad:api argument.is_use_percentage
data remove storage tusb_ad:api argument.set_health_percentage
data remove storage tusb_ad:api argument.is_set_absorption