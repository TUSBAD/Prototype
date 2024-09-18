#> api:stat/remove_modifier

# 比較用にコピー
    data modify storage tusb_ad:api uuid set from storage tusb_ad:api argument.uuid
# 比較
    execute store success score $is_success temp run data modify storage tusb_ad:api uuid set from storage tusb_ad:api modifier[-1].uuid
# 同じ場合はRemoveに設定する
    #execute if score $isSuccess temp matches 0 run data modify storage api: Removed set from storage api: modifier[-1]
# 違う場合は新しい配列に追加
    execute if score $is_success temp matches 1 run data modify storage tusb_ad:api new_modifier append from storage tusb_ad:api modifier[-1]
# リストから削除
    data remove storage tusb_ad:api modifier[-1]
# リセット
    scoreboard players reset $is_success temp
    data remove storage tusb_ad:api uuid
# 要素が残ってたら再帰
    execute if data storage tusb_ad:api modifier[0] run function api:stat/remove_modifier