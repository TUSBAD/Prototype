

# ohmydatでいれるわけなんだけど、その時どう対処するかってのをね
# _[4][4][4][4]...みたいなpathの構造がどうなってるかを知りたいね


# 呼び出し
function #oh_my_dat:please

# アクセス
#data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].physical_attack_power

# 書き換え

# 無ければリストの型を作成
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].physical_attack_power[0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].physical_attack_power set value []

# 先に空欄を作成
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].physical_attack_power append value {}

# リストの末尾に追加

# この辺set from storageにしろな

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].physical_attack_power.[-1].UUID set from storage tusb_ad:api argument.uuid
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].physical_attack_power.[-1].Amount set from storage tusb_ad:api argument.amount
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].physical_attack_power.[-1].Operation set from storage tusb_ad:api argument.operation


# データの更新
# 中身前確認して計算
# 全部のデータを渡す
data modify storage tusb_ad:api temp_modifier set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].physical_attack_power

function api:stat/add_modifier

# 中身をtemp storageに移したあと、scoreboardで計算


# 値を確認
tellraw @a [{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].physical_attack_power", "storage": "oh_my_dat:"}, {"text": "がstorageの値です"}]


# ん～ここをmacroで呼び出して、理由に応じて値を足すって感じになるのかね～
# でもこれダメージ計算がだるい～