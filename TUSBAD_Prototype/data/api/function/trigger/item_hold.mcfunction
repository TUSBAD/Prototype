#> api:trigger/item_hold
# 特定アイテムを所持している間の処理

function oh_my_dat:please

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory[{id:clock}]
#例として時計を持っていた場合？