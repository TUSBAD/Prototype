#> shop:shop/main/tick/compare_update
# チェストロッコの中身を毎tick比較する

execute store result storage shop: slot byte 1 run function shop:shop/main/tick/compare

execute unless data storage shop: {slot:-1b} if data storage shop: slot run function shop:shop/main/tick/gui_reset with storage shop: