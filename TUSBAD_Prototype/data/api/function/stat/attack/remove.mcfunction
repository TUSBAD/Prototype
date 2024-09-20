#> api:stat/attack/remove
#
# 指定したuuidの攻撃力データを削除します。
#
# @input 
#   storage tusb_ad:api argument.uuid
#       削除したいステータスの識別用uuid
# @api


# 消す時はuuidを指定して削除する


# そもそもデータが有るかどうかの確認
execute unless data storage tusb_ad:api argument.uuid run tellraw @a [{"text": "uuidがありません"}]
# データが有るなら消す
execute if data storage tusb_ad:api argument.uuid run function api:stat/calc/attack/remove
# リセット
data remove storage tusb_ad:api argument.uuid