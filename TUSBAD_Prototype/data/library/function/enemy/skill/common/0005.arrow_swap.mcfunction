#> library:enemy/skill/common/0005.arrow_swap
# ID:5
# スキル名：「アロースワップ」
# スケルトンの持つ矢を渡されたデータに応じて変更する
# 矢の変更内容はスキル候補側で決定し、マクロで受け渡す


$data modify entity @s HandItems[1] set value $(arrow)