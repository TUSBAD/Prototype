#> shop:shop/main/tick/return_item

# カーソルにあったらそこに戻して終了
#data remove storage shop: test
$execute store success storage shop: test byte 1 if items entity @p[tag=Opener] player.cursor *[custom_data={none:0}] run item replace entity @p[tag=Opener] player.cursor from entity @s container.$(slot)
#execute if data storage shop: {test:false} run say たたり
#execute if data storage shop: {test:true} run say あさり
execute if data storage shop: {test:true} run return 0

# give
#say あげるわ
data remove block 10000 0 10000 Items
$data modify block 10000 0 10000 Items append from entity @s Items[$(slot)]
loot give @p[tag=Opener] mine 10000 0 10000 debug_stick
