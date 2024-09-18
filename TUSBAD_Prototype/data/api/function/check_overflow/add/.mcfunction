#> api:check_overflow/add/
#
# inputされた2つの値をたした際にオーバーフローするかどうかを判定します。
# 判定結果はスコアボード$return tempに代入されます。参照後、呼び出し元でリセットしてください。
#
# @input
#   storage tusb_ad:api argument.add1
#   storage tusb_ad:api argument.add2
#   storage tusb_ad:api argument.scale
# @output
#   score $return temp

# inputされた値を比較します


# +-検知用スコアボード

# storageからscoreboardに代入

# argument.scale=1
execute if data storage tusb_ad:api {argument:{scale:1}} store result score $add1 temp run data get storage tusb_ad:api argument.add1 1
execute if data storage tusb_ad:api {argument:{scale:1}} store result score $add2 temp run data get storage tusb_ad:api argument.add2 1
# argument.scale=10
execute if data storage tusb_ad:api {argument:{scale:10}} store result score $add1 temp run data get storage tusb_ad:api argument.add1 10
execute if data storage tusb_ad:api {argument:{scale:10}} store result score $add2 temp run data get storage tusb_ad:api argument.add2 10
# argument.scale=100
execute if data storage tusb_ad:api {argument:{scale:100}} store result score $add1 temp run data get storage tusb_ad:api argument.add1 100
execute if data storage tusb_ad:api {argument:{scale:100}} store result score $add2 temp run data get storage tusb_ad:api argument.add2 100

# 最初の判定は1、次は10を足すようにする

# 0の場合はsame
# 1の場合は左が正
# 10の場合は右が正
# 11の場合はsame

# 先にプレイヤーをセット
scoreboard players set $addcheck temp 0
# 判定
execute if score $add1 temp matches 0.. run scoreboard players add $addcheck temp 1
execute if score $add2 temp matches 0.. run scoreboard players add $addcheck temp 10

# true/true or false/falseなら左右の正負が一致
# true/false or false/trueなら左右の正負が不一致

execute if score $addcheck temp matches 0 run function api:check_overflow/add/negative
execute if score $addcheck temp matches 1 run say 実行しない
execute if score $addcheck temp matches 10 run say 実行しない
execute if score $addcheck temp matches 11 run function api:check_overflow/add/positive

# リセット
data remove storage tusb_ad:api argument.add1
data remove storage tusb_ad:api argument.add2
data remove storage tusb_ad:api argument.scale
scoreboard players reset $addcheck temp
scoreboard players reset $add1 temp
scoreboard players reset $add2 temp
