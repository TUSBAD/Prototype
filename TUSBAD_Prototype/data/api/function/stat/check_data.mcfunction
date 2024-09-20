#> api:stat/check_data
#
# 入力データがすべて適切に入力されているか確認します
#
# @public


# 入力pathにデータがちゃんとあるかどうかを確認します
execute unless data storage tusb_ad:api argument.uuid run tellraw @a [{"text": "uuidがありません"}]
execute unless data storage tusb_ad:api argument.amount run tellraw @a [{"text": "amountがありません"}]
execute unless data storage tusb_ad:api argument.operation run tellraw @a [{"text": "operationがありません"}]