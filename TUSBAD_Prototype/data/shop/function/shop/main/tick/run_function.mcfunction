#> shop:shop/main/open/run_function

$execute if entity @p[predicate=shop:cheak_cursor,tag=Opener] run item replace entity @p[tag=Opener] player.cursor from entity @s container.$(slot)

$function shop:shop/aseet/$(shop_name)/page/$(page)/get_items

$data modify entity @s Items[$(slot)] set from storage shop:page Items[$(slot)]

$function shop:shop/$(shop_name)/page/$(page)/slot/$(slot)

clear @p[tag=Opener] *[custom_data={none:0}]

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{none:0}}}}]
