#> shop:shop/main/tick/run_function

$execute if entity @p[predicate=shop:cheak_cursor,tag=Opener] unless data entity @s Items[$(slot)].components."minecraft:custom_data"{none:0} run item replace entity @p[tag=Opener] player.cursor from entity @s container.$(slot)

data modify entity @s Items set from storage shop:page Items

$function shop:shop/asset/$(shop_name)/page/$(page)/slot/$(slot)

clear @a *[custom_data={none:0}]

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{none:0}}}}]
