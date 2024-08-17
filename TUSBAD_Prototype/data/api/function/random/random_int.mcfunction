#> api:load:random/random_int
# 最大値、最小値を設定することでランダムな整数値を取得する

#乱数に使う数の代入
$execute as @a run scoreboard players set $rand_calc calc1 $(max)

$execute as @a run scoreboard players set $rand_calc calc2 $(min)

#乱数計算の準備

#乱数計算用のアーマースタンドを召喚
execute at @a run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:['rnd']}

#アーマースタンドからUUIDを取得
execute as @a store result score $rand_calc random_num run data get entity @e[tag=rnd, sort=nearest, limit=1] UUID[0]

#乱数を剰余で計算
execute as @a run scoreboard players operation $rand_calc random_num %= $rand_calc calc1

#最低値で補正
execute as @a run scoreboard players operation $rand_calc random_num += $rand_calc calc2

#最大値が最小値より小さい場合は同じにする
execute as @a if score $rand_calc calc1 <= $rand_calc calc2 run scoreboard players operation $rand_calc random_num = $rand_calc calc2

#乱数値をストレージに保存
execute store result storage tusb_ad:api rand int 1 run scoreboard players get $rand_calc random_num

#乱数用のアマスタを削除
kill @e[tag=rnd]