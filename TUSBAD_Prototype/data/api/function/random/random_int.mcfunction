#> random_number:random_int
# 最大値、最小値を設定することでランダムな整数値を取得する

#乱数に使う数の代入
$execute as @a run scoreboard players set _randCalcMan randomMax $(max)

$execute as @a run scoreboard players set _randCalcMan randomMin $(min)

#乱数計算の準備

#乱数計算用のアーマースタンドを召喚
execute at @a run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:['rnd']}

#アーマースタンドからUUIDを取得
execute as @a store result score _randCalcMan randomNum run data get entity @e[tag=rnd, sort=nearest, limit=1] UUID[0]

#乱数を剰余で計算
execute as @a run scoreboard players operation _randCalcMan randomNum %= _randCalcMan randomMax

#最低値で補正
execute as @a run scoreboard players operation _randCalcMan randomNum += _randCalcMan randomMin

#最大値が最小値より小さい場合は同じにする
execute as @a if score _randCalcMan randomMax <= _randCalcMan randomMin run scoreboard players operation _randCalcMan randomNum = _randCalcMan randomMin

#乱数値をストレージに保存
execute store result storage random_number:randomnum rand int 1 run scoreboard players get _randCalcMan randomNum

kill @e[tag=rnd]