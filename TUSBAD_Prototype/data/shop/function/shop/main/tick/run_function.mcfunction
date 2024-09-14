#> shop:shop/main/tick/run_function

# カーソルにnoneがあれば$(slot)のアイテムを返還
$execute if entity @p[predicate=shop:cheak_cursor,tag=Opener] unless data entity @s Items[$(slot)].components."minecraft:custom_data"{none:0} run item replace entity @p[tag=Opener] player.cursor from entity @s container.$(slot)

# shop:pageのアイテムを適応
data modify entity @s Items set from storage shop:page Items

# クリック処理を呼び出し
$function shop:shop/asset/$(shop_name)/page/$(page)/slot/$(slot)

# noneをクリア、キル
clear @a *[custom_data={none:0}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{none:0}}}}]
