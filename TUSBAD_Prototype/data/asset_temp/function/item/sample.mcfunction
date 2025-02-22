#> asset_temp:item/sample
# アイテムテンプレート用のサンプル

### 残っているデータを一度クリーンアップする
data remove storage tusb_ad: asset_temp

### 元となるアイテム : 文字列
#data modify storage tusb_ad: asset_temp.base_item set value $ここに元となるアイテムのIDを入力
data modify storage tusb_ad: asset_temp.base_item set value "minecraft:iron_ingot"

### アイテムの数量：整数
data modify storage tusb_ad: asset_temp.item_count set value 1

### アイテムのID（AD用の管理ID）: 整数
#data modify storage tusb_ad: asset_temp.ad_id set value $ここに管理用IDを入力
data modify storage tusb_ad: asset_temp.ad_id set value 999999

### アイテム名 : Jsonテキスト
#data modify storage tusb_ad: asset_temp.display_name set value $ここに名前を入力
data modify storage tusb_ad: asset_temp.display_name set value "快眠まくら"

### アイテム説明 : Jsonテキストリスト
#data modify storage tusb_ad: asset_temp.description set value $ここに説明を入力
data modify storage tusb_ad: asset_temp.description set value ["§cよく眠れる","快眠まくら。"]

### 見た目（カスタムモデルデータID） : 整数
#data modify storage tusb_ad: asset_temp.custommodel_id set value $ここにCMDのIDを入力

###エンチャント:タグコンパウンド（エンチャントID:レベル）
#data modify storage tusb_ad: asset_temp.enchantments set value $ここにエンチャントを入力（仮）

###トリガー（仮）
#data modify storage tusb_ad: asset_temp.trigger set value $ここにトリガーパスを入力（仮）

###その他コンポーネント（耐久損傷、修理コスト、皮防具の色など…）
#data modify storage tusb_ad: asset_temp.components set value $残りのNBTはまとめてこちらに

##### 改造ゾーン

###最大スロット数
#data modify storage tusb_ad: asset_temp.item_modify.max_slot set value $ここにアイテムが保有する許容スロット数を入力

###使用中のスロット数
#data modify storage tusb_ad: asset_temp.item_modify.use_slot set value $ここに現在使用されているスロット数を入力

###消費スロット数
#data modify storage tusb_ad: asset_temp.item_modify.needs_slot set value $ここに改造時消費されるスロット数を入力

function asset_manager:item/converter