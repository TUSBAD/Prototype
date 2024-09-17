#> shop:shop/asset/0000.example/page/0/slot/2

#page番号は上1(2)桁がスロット番号、下２桁がページ番号(この場合0200だが上１桁が0のためそれを消し200にする)
scoreboard players set @s page 200

function shop:shop/asset/0000.example/page/200/get_items

data modify entity @s Items set from storage shop:page Items
