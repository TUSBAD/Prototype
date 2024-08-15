



# テスト用

# まずstorage配列に諸々入れます

data modify storage tusb_ad:api test set value []

data modify storage tusb_ad:api test append value {}

# 仮データ
data modify storage tusb_ad:api test.[0] set value {UUID:[I;0,0,0,0], Amount:10, Operation:"add_base"}
data modify storage tusb_ad:api test append value {}
data modify storage tusb_ad:api test.[1] set value {UUID:[I;0,0,0,1], Amount:10, Operation:"add_base"}
data modify storage tusb_ad:api test append value {}
data modify storage tusb_ad:api test.[2] set value {UUID:[I;0,0,0,2], Amount:0.1f, Operation:"multiply_base"}


# データを別storageにいれる
data modify storage tusb_ad:api test_temp set from storage tusb_ad:api test

# 末尾から計算します(本来なら再起functionでやるけど今は順次処理)

# 末尾のデータを取得
# operationに応じて処理を分けます

# てかこれの参照できねえのかｗ
#execute if data storage tusb_ad:api test.[-1]{Operation:"add_base"} run scoreboard players add @s test 10

# なので一旦移す
data modify storage tusb_ad:api test_op set from storage tusb_ad:api test_temp.[-1]

# 移したあとに確認

# multiply_baseにデフォルト100を入れる
scoreboard players set $MultiBase temp 100

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

# 本来なら再起だけどめんどいのでこのfuncで実行

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

# 本来なら再起だけどめんどいのでこのfuncで実行


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


# この段階でscoreboardの内容をtellraw

tellraw @a [{"text": "add_baseの値:"}, {"score": {"name": "$Add", "objective": "temp"}}]
tellraw @a [{"text": "multiply_baseの値:"}, {"score": {"name": "$MultiBase", "objective": "temp"}}]


# 再起が終わったらそれぞれ足す

# addを足す

scoreboard players operation $Total temp += $Add temp

# multiplyをかける
scoreboard players operation $Total temp *= $MultiBase temp

# multiplyをそれぞれかける(未実装)

# storageに値を戻す
execute store result storage tusb_ad:api test_totalmodifier float 0.0001 run scoreboard players get $Total temp

# スコアリセット
scoreboard players reset $Total temp
scoreboard players reset $Add temp
scoreboard players reset $MultiBase temp
scoreboard players reset $Temp temp

# storageリセット
data remove storage tusb_ad:api test
data remove storage tusb_ad:api test_temp

# (debug) storageの中身をtellraw
tellraw @a [{"text": "modifierの値:"}, {"nbt": "test_totalmodifier", "storage": "tusb_ad:api"}]

data remove storage tusb_ad:api test_totalmodifier