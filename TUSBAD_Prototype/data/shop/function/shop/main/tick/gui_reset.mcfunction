#> shop:shop/main/tick/gui_reset
# チェストロッコの中身をページに応じてリセットする

#混入したアイテムを取得し、GUI用アイテムではないことを確認して保存
$execute unless data storage shop:temp Items[$(slot)].components."custom_data"{none:0} run data modify storage shop: wrong_item set from storage shop:temp Items[$(slot)] 

#確認されている不具合
#シュルカーボックスの中が空の場合、どんなアイテムでも格納できない（空の場合格納する配列が存在しないためと推測）
#シュルカーボックスの中にGUI用アイテムである黒の板ガラスが格納されている（格納タイミングが悪いと推測）
#シュルカーボックスが直で排出され、中のアイテムが出てこない（ルートテーブルの書き方が悪いと推測）

execute if data storage shop: wrong_item run data modify block 10000 0 10000 Items[0] merge from storage shop: wrong_item

execute if data storage shop: wrong_item run loot give @p[tag=Opener] mine 10000 0 10000 debug_stick

#data remove storage shop: wrong_item

data modify storage shop: slot set value -1b

#開いていたページの内容を読み込んでリセット
$function shop:shop/asset/$(shop_name)/page/$(page)/get_items