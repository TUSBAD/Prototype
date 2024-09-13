#> shop:shop/load
#ロード処理

scoreboard objectives add shop dummy "shop番号"

scoreboard objectives add page dummy "ページ番号"

scoreboard objectives add request dummy "取引アイテムの所持数"

team add NoCollision

team modify NoCollision collisionRule never
