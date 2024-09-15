#> shop:shop/main/tick/return_item

# カーソルにあったらそこに戻して終了
$execute store success storage shop: test byte 1 if items entity @p[tag=Opener] player.cursor *[custom_data={none:0}] run item replace entity @s player.cursor from entity @s container.$(wrong_slot)
execute if data storage shop: {test:true} run return 0

# give
data remove block 10000 0 10000 Items
$data modify block 10000 0 10000 Items append from entity @s Items[$(wrong_slot)]
loot give @p[tag=Opener] mine 10000 0 10000 debug_stick
