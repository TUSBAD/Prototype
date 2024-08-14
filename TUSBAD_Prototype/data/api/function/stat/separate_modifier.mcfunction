


# 仮storageから単一データだけを抜き出して持ってくる
data modify storage tusb_ad:api test_op set from storage tusb_ad:api test_temp.[-1]

# 移したあとに確認

# add_baseの場合
execute if data storage tusb_ad:api test_op{Operation:"add_base"} store result score $Temp temp run data get storage tusb_ad:api test_op.Amount 100
execute if data storage tusb_ad:api test_op{Operation:"add_base"} run scoreboard players operation $Add temp += $Temp temp

# multiply_baseの場合
execute if data storage tusb_ad:api test_op{Operation:"multiply_base"} store result score $Temp temp run data get storage tusb_ad:api test_op.Amount 100
execute if data storage tusb_ad:api test_op{Operation:"multiply_base"} run scoreboard players operation $MultiBase temp += $Temp temp

# multiplyの場合(未実装)

# 末尾を削除
data remove storage tusb_ad:api test_temp.[-1]
# test_opリセット
data remove storage tusb_ad:api test_op

# もしまだ要素があるなら再起
execute if data storage tusb_ad:api test_temp.[-1] run function api:stat/test/separate_modifier