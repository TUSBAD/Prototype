#> api:stat/calc/percentage/calc
#
# $10multi tempをdmgにかけ、その値を%の単一とかける

# dmgに10^桁数-3をかける
# 0.の時対応がスコアボードに-はいってるんでそれで処理が分岐する形に
execute if score $digit_3 temp matches 1.. run function api:stat/calc/percentage/plus
execute if score $digit_3 temp matches ..0 run function api:stat/calc/percentage/minus

# dmg x 対応する桁の%を計算

    # 引数を設定
    data modify storage tusb_ad:api argument.scale set value 1
    execute store result storage tusb_ad:api argument.multi1 int 1 run scoreboard players get $temp_dmg temp
    execute store result storage tusb_ad:api argument.multi2 int 1 run scoreboard players get $single_rate temp
    # オーバーフローチェック
    function api:check_overflow/multi/

    # dmg x 対応する桁の%
    execute if score $return temp matches 0 run scoreboard players operation $temp_dmg temp *= $single_rate temp
    # オーバーフローしているなら最大値に
    execute if score $return temp matches 1 run scoreboard players operation $temp_dmg temp = $system_max const

    # リセット
    scoreboard players reset $return temp

# トータルのダメージを加算

    # 引数を設定
    data modify storage tusb_ad:api argument.scale set value 1
    execute store result storage tusb_ad:api argument.add1 int 1 run scoreboard players get $total_dmg temp
    execute store result storage tusb_ad:api argument.add2 int 1 run scoreboard players get $temp_dmg temp

    # オーバーフローチェック
    function api:check_overflow/add/
    
    # 実行
    execute if score $return temp matches 0 run scoreboard players operation $total_dmg temp += $temp_dmg temp
    # オーバーフローしているなら最大値に
    execute if score $return temp matches 1 run scoreboard players operation $total_dmg temp = $system_max const

    # リセット
    scoreboard players reset $return temp

# 対応する桁x%だけ%から減算
scoreboard players operation $temp_10multi temp = $10multi temp
scoreboard players operation $temp_10multi temp *= $single_rate temp
scoreboard players operation $temp_rate temp -= $temp_10multi temp

# 桁数を下げる
scoreboard players remove $digit temp 1

# digit_3と$10multi_3を求める
function api:stat/calc/percentage/digit_to_multi/multi_by_digit_3

# 10multiを/10する
scoreboard players operation $10multi temp /= $10 const

# dmgxその時の%の値をprintする
#tellraw @a [{"text": "dmgx%の値:"}, {"score": {"name": "$temp_dmg", "objective": "temp"}}]
#tellraw @a [{"text": "digitの値:"}, {"score": {"name": "$digit", "objective": "temp"}}]
#tellraw @a [{"text": "digit_3の値:"}, {"score": {"name": "$digit_3", "objective": "temp"}}]

# temp_dmgを戻す
scoreboard players operation $temp_dmg temp = $dmg temp

# $digitが0以外なら再起
execute unless score $digit temp matches 0 run function api:stat/calc/percentage/calc