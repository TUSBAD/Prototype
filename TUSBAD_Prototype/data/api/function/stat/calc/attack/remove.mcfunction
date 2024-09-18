#> api:stat/calc/attack/remove



# 呼び出し
function #oh_my_dat:please

# データがなければいれる
    data modify storage tusb_ad:api temp_modifier set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.list
# 配列の初期化
    data modify storage tusb_ad:api new_modifier set value []
    #data remove storage api: removed
# フィルタ
    function api:stat/remove_modifier
# 新しい配列を戻す
    data modify storage tusb_ad:api modifier set from storage tusb_ad:api new_modifier
    data modify storage tusb_ad:api temp_modifier set from storage tusb_ad:api modifier

# データの更新
    function api:stat/calc/calc_modifier
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical set from storage tusb_ad:api return.modifier
    # listが入ってないので追加
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.list set from storage tusb_ad:api modifier

    # これやるとあれや、上のlistがはいらねえ
# リセット
    data remove storage tusb_ad:api modifier
    data remove storage tusb_ad:api new_modifier