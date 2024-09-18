#> api:stat/calc/attack/add
#
# 引数をohmydatのリストに加え、それらを一時storageに代入し計算部分に入ります。
#
# @declare function api:stat/attack/add


# 呼び出し
function #oh_my_dat:please

# 無ければリストの型を作成
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.list[0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.list set value []

# 先に空欄を作成
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.list append value {}

# リストの末尾に追加
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.list.[-1].uuid set from storage tusb_ad:api argument.uuid
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.list.[-1].amount set from storage tusb_ad:api argument.amount
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.list.[-1].operation set from storage tusb_ad:api argument.operation

# データの更新
# 全部のデータを渡す
data modify storage tusb_ad:api temp_modifier set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.list

# 計算
function api:stat/calc/calc_modifier

# 値を代入
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical merge from storage tusb_ad:api return.modifier

# 中身を見たいので表示
tellraw @a [{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical", "storage": "oh_my_dat:"}, {"text": "がstorageの値です"}]