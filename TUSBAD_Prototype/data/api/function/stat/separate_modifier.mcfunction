#> api:stat/separate_modifier


# 仮storageから単一データだけを抜き出して持ってくる
data modify storage tusb_ad:api test_op set from storage tusb_ad:api temp_modifier.[-1]

# test_opの中身を表示
tellraw @a [{"text":"test_opの中身: "},{"storage":"tusb_ad:api","nbt":"test_op"}]

# 移したあとに確認

# add_baseの場合
execute if data storage tusb_ad:api test_op{operation:"add_base"} run function api:stat/calc/add
# multiply_baseの場合
execute if data storage tusb_ad:api test_op{operation:"multiply_base"} run function api:stat/calc/multiply_base
# multiplyの場合
execute if data storage tusb_ad:api test_op{operation:"multiply"} run function api:stat/calc/multiply

# 末尾を削除
data remove storage tusb_ad:api temp_modifier.[-1]
# test_opリセット
data remove storage tusb_ad:api test_op

# もしまだ要素があるなら再起
execute if data storage tusb_ad:api temp_modifier.[-1] run function api:stat/separate_modifier