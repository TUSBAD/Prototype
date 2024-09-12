#> shop:shop/asset/0000.example/page/200/slot/22

execute if score 4 request matches 5.. if score 5 request matches 1.. run function shop:shop/asset/0000.example/page/200/trading

data modify entity @s Items set from storage shop:page Items
