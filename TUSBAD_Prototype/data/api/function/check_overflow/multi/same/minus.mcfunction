#> api:check_overflow/multi/same/minus
#
# 対称がマイナス×マイナスの場合絶対値にします
#
#> 変数定義
#declare
#   score $multi1 temp
#   score $multi2 temp
#   score $minus const
#
# @within function api:check_overflow/multi/

# マイナスの場合、値を絶対値にする

scoreboard players operation $multi1 temp *= $minus const
scoreboard players operation $multi2 temp *= $minus const

# function実行
function api:check_overflow/multi/same/