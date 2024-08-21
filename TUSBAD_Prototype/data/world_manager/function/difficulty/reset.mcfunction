#> world_manager:difficulty/reset
#
# デフォルト難易度に設定
#
#@internal funciton difficulty:*

#> 色の変更及び設定の適用
function world_manager:difficulty/apply/casual
function world_manager:difficulty/color/casual
#> 初期化
data remove storage world_manager: difficult
# schedule function world_manager:difficulty/select/end 1t replace