#> shop:shop/asset/0000.example/page/200/check

#ここを変える
execute store result score 4 request run clear @p[tag=Opener] emerald 0

execute store result score 5 request run clear @p[tag=Opener] iron_block 0

function shop:shop/main/manager/none_set
data modify entity @s Items set from storage shop:page Items
