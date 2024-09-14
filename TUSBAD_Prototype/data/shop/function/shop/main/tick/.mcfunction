#> shop:shop/main/tick/

# 個人ストレージを呼び出し
function #oh_my_dat:please

# shop_nameを取り出し
data modify storage shop: shop_name set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].shop_name

# Itemsをstorageに移す
data remove storage shop: Items
data modify storage shop: Items set from entity @s Items

# opener(UUID)を取得
data modify storage shop: opener set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].opener

# マクロで色々するfunctionを実行
function shop:shop/main/tick/macro with storage shop:

# interactionがいなければ設置
execute unless entity @e[tag=ShopKeep,type=interaction,distance=..0.3] run summon interaction ~ ~ ~ {Tags:["ShopKeep"]}

# 近くに開けた人がいなければkill
execute unless entity @a[tag=Opener,distance=..7] run kill @s
execute unless entity @s run kill @e[type=interaction,tag=ShopKeep,limit=1,sort=nearest]

function shop:shop/main/tick/slot_check

# function shop:shop/main/tick/check with storage shop:

tag @a[tag=Opener] remove Opener