#> asset_temp:item/
# 自動生成アイテムテンプレートのサンプル

### 元となるアイテム : 文字列
data modify storage tusb_ad:asset_temp ad_id set value $ここに元となるアイテムのIDを入力

### アイテムのID（AD用の管理ID）: 整数
data modify storage tusb_ad:asset_temp id set value $ここに管理用IDを入力

### アイテム名 : Jsonテキスト
data modify storage tusb_ad:asset_temp custom_name set value $ここに名前を入力

### アイテム説明 : Jsonテキストリスト
data modify storage tusb_ad:asset_temp lore set value $ここに説明を入力

### 見た目（カスタムモデルID） : 整数
data modify storage tusb_ad:asset_temp custom_model_data set value $ここにIDを入力



