#> api:stat/calc_multiply
#
# 再起してmultiplyを計算します
#
# @within function 
#   api:stat/calc_multiply

# 値を取得
execute store result score $temp temp run data get storage tusb_ad:api multiply[-1] 100
# ベース分追加
scoreboard players add $temp temp 100
# 既存と乗算
scoreboard players operation $multi temp *= $temp temp
scoreboard players operation $modifier temp *= $multiply temp
# 余分な小数部を削除
scoreboard players operation $multi temp /= $100 const
scoreboard players operation $modifier temp /= $100 const

# リストから要素の削除
data remove storage tusb_ad:api multiply[-1]

# スコアリセット
scoreboard players reset $temp temp

# リストに要素があるなら再帰
execute if data storage tusb_ad:api multiply[-1] run function api:stat/calc_multiply