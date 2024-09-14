#> shop:shop/main/tick/macro
# Openerにtagを付けたり、tick処理を呼び出したり

# UUIDで開いたプレイヤーにtagを付ける
$tag @p[nbt={UUID:$(opener)}] add Opener

# ショップのtick処理を実行
$function shop:shop/asset/$(shop_name)/tick

$function shop:shop/asset/$(shop_name)/page/$(page)/get_items