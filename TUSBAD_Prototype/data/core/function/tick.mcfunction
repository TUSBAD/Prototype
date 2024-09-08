#> core:tick
#毎ティック処理


#shop関連
execute as @e[tag=open,type=chest_minecart] at @s run function shop:shop/main/tick/
