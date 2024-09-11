#> shop:shop/main/tick/check
$function shop:shop/aseet/$(shop_name)/page/$(page)/check
execute if score @s page matches 0..99 run item replace entity @s container.22 with black_stained_glass_pane[custom_name='" "',custom_data={none:0}]
