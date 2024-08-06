


# 渡されたmodifierをaddします



# TSBの場合、共通storageにそれぞれの属性の中身をコピー、
# コピー後リストから中身を順番に取りだし、列挙して計算しreturnする

# returnしたらその後はそれぞれで読み出して値を戻す


# operation事に分割

function api:stat/separate_modifier

# デフォルト値の設定(1000)
scoreboard players set $modifier temp 1000

# addの処理
scoreboard players operation $modifier temp += $add temp

# multiplybaseの処理

# multiply_baseにデフォルト100を入れる
scoreboard players set $MultiBase temp 100
# addとかける

# かけたあと無駄な分を割り算する


# multiplyの処理

# 値を返却

# リセット