#> shop:shop/aseet/0000.example/page/1/get_items

data remove storage shop:page Items

function shop:shop/aseet/init

data modify storage shop:page Items[18] set value {id:"minecraft:orange_wool",count:1,components:{"minecraft:custom_name":'{"bold":true,"italic":false,"text":"前のページ"}'}}

function shop:shop/aseet/none_set
data modify entity @s Items set from storage shop:page Items
