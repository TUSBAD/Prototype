#> asset_manager:item/converter
# ストレージ内のADパスをバニラパスに変換する

### 残っているデータを一度クリーンアップする
data remove storage tusb_ad: asset_manager

### アイテムID
data modify storage tusb_ad:asset_manager item.id set from storage tusb_ad:asset_temp.base_item

### アイテムの数量
data modify storage tusb_ad:asset_manager item.count set value 1

### アイテム管理ID
data modify storage tusb_ad:asset_manager item.components.custom_data.ad_id set from storage tusb_ad:asset_temp.ad_id

### アイテム名
data modify storage tusb_ad:asset_manager item.components.custom_name set from storage tusb_ad:asset_temp.display_name