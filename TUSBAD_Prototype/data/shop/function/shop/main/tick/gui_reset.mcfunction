#> shop:shop/main/tick/gui_reset
# チェストロッコの中身をページに応じてリセットする

#混入したアイテムを取得し、GUI用アイテムではないことを確認して保存
$execute unless data storage shop: Items[$(slot)].components."minecraft:custom_data".none run function shop:shop/main/tick/return_item with storage shop:
#$tellraw @p {"translate":"%1$s\n%2$s","with":[{"entity":"@s","nbt":"Items[$(slot)]"},{"storage":"shop:","nbt":"Items[$(slot)]"}]}

#確認されている不具合
#シュルカーボックスの中が空の場合、どんなアイテムでも格納できない（空の場合格納する配列が存在しないためと推測）
#シュルカーボックスの中にGUI用アイテムである黒の板ガラスが格納されている（格納タイミングが悪いと推測）

#シュルカーボックスが直で排出され、中のアイテムが出てこない（ルートテーブルの書き方が悪いと推測）
#→急に正常に動き出したので様子見中

#開いていたページの内容を読み込んでリセット
$function shop:shop/asset/$(shop_name)/page/$(page)/get_items

$function shop:shop/asset/$(shop_name)/page/$(page)/slot/$(slot)

execute store result storage shop: page int 1 run scoreboard players get @s page

function #oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].temp_shop set from entity @s Items

clear @a *[custom_data={none:0}]

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{none:0}}}}]
