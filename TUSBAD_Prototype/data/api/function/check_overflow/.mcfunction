#> api:check_overflow/
#
# inputされた2つの値をかけた際にオーバーフローするかどうかを判定します。
# returnは今のところ作ってないです、今後作ります。
#
# @input
#   storage tusb_ad:api argument.multi1
#   storage tusb_ad:api argument.multi2
# @output
#   nothing now

# inputされた値を比較します


# +-検知用スコアボード

# storageからscoreboardに代入
execute store result score $multi1 temp run data get storage tusb_ad:api argument.multi1 100
execute store result score $multi2 temp run data get storage tusb_ad:api argument.multi2 100

# 最初の判定は1、次は10を足すようにする

# 0の場合はsame
# 1の場合は左が正
# 10の場合は右が正
# 11の場合はsame

# 先にプレイヤーをセット
scoreboard players set $multicheck temp 0
# 判定
execute if score $multi1 temp matches 0.. run scoreboard players add $multicheck temp 1
execute if score $multi2 temp matches 0.. run scoreboard players add $multicheck temp 10

# true/true or false/falseなら左右の正負が一致
# true/false or false/trueなら左右の正負が不一致

execute if score $multicheck temp matches 0 run function api:check_overflow/multi/same/minus
execute if score $multicheck temp matches 1 run function api:check_overflow/multi/diff/plus_minus
execute if score $multicheck temp matches 10 run function api:check_overflow/multi/diff/minus_plus
execute if score $multicheck temp matches 11 run function api:check_overflow/multi/same/

# リセット
scoreboard players reset $multicheck temp
scoreboard players reset $multi1 temp
scoreboard players reset $multi2 temp