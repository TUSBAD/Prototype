#> shop:shop/tick
#毎ティック処理


#shop関連
execute as @e[tag=Open,type=chest_minecart] at @s run function shop:shop/main/tick/
