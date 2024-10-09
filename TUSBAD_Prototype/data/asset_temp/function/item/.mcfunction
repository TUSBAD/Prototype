#> asset_temp:item/
# 自動生成アイテムテンプレートのサンプル

### 元となるアイテム : 文字列
data modify storage tusb_ad:asset_temp id set value $ここに元となるアイテムのIDを入力

### アイテムのID（AD用の管理ID）: 整数
data modify storage tusb_ad:asset_temp components.custom_data.ad_id set value $ここに管理用IDを入力

### アイテム名 : Jsonテキスト
data modify storage tusb_ad:asset_temp components.custom_name set value $ここに名前を入力

### アイテム説明 : Jsonテキストリスト
data modify storage tusb_ad:asset_temp components.lore set value $ここに説明を入力

### 見た目（カスタムモデルデータID） : 整数
data modify storage tusb_ad:asset_temp components.custom_model_data set value $ここにCMDのIDを入力

###エンチャント:タグコンパウンド（エンチャントID:レベル）
data modify storage tusb_ad:asset_temp components.enchantments set value $ここにエンチャントを入力（仮）

###トリガー（仮）
data modify storage tusb_ad:asset_temp components.custom_data.trigger set value $ここにトリガーパスを入力（仮）

###その他コンポーネント（耐久損傷、修理コスト、皮防具の色など…）
#data modify storage tusb_ad:asset_temp components set value $残りのNBTはまとめてこちらに

##### 改造ゾーン

###最大スロット数
#data modify storage tusb_ad:asset_temp components.custom_data.max_slot set value $ここにアイテムが保有する許容スロット数を入力

###使用中のスロット数
#data modify storage tusb_ad:asset_temp components.custom_data.use_slot set value $ここに現在使用されているスロット数を入力

###消費スロット数
#data modify storage tusb_ad:asset_temp components.custom_data.needs_slot set value $ここに改造時消費されるスロット数を入力