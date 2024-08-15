


# 渡されたmodifierをaddします



# TSBの場合、共通storageにそれぞれの属性の中身をコピー、
# コピー後リストから中身を順番に取りだし、列挙して計算しreturnする

# returnしたらその後はそれぞれで読み出して値を戻す


# operation事に分割し合算する
# これやべーのが、multiplyの場合有効数字がどんどん伸びていくので、逐一有効数字を揃えてあげないとスコアボードが大変なことになる。

function api:stat/separate_modifier

# デフォルト値の設定(1000)
scoreboard players set $modifier temp 1000

# addの処理
scoreboard players operation $modifier temp += $add temp

# multiplybaseの処理

# multiply_baseにデフォルト100を入れる
scoreboard players set $MultiBase temp 100
# addとかける
scoreboard players operation $modifier temp *= $MultiBase temp

# かけたあと無駄な分を割り算する


# multiplyの処理

# multiply事に再帰functionで掛け算する


# 値をそれぞれで返却
execute store result storage tusb_ad:api return.modifier.add float 0.01 run scoreboard players get $add temp
execute store result storage tusb_ad:api return.modifier.multiply_base float 0.01 run scoreboard players get $MultiBase temp
execute store result storage tusb_ad:api return.modifier.multiply float 0.01 run say hi
execute store result storage tusb_ad:api return.modifier.total float 0.01 run scoreboard players get $modifier temp

# 途中まで勘違いしてたけどこれ攻撃時の処理じゃなくて、ステータスを更新する処理なのでmodifier事に書かないとだめよ～ん
# でもTSBにあるトータルの補正値まで計算しているのは何なんだろうか、
# separateしてる段階でそれぞれの要素の計算はすんでいるのでこれ以上やる必要な気もするが、、
# あーでも攻撃以外のステータスはトータル値が欲しいのか


# リセット

scoreboard players reset $modifier temp
scoreboard players reset $add temp

scoreboard players reset $MultiBase temp