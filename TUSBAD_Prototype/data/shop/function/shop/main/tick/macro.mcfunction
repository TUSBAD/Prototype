#> shop:shop/main/tick/macro
# Openerにtagを付けたり、tick処理を呼び出したり

$tag @p[nbt={UUID:$(opener)}] add Opener

$function shop:shop/asset/$(shop_name)/tick

#$function shop:shop/asset/$(shop_name)/page/$(page)/get_items