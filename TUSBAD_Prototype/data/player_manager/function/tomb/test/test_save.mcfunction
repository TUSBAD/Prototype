#> player_manager:tomb/test/test_save
# テスト用にアイテムをセーブして墓を作る

#アイテムを保存（この時点でキープインベントリであることが確定しているため通常保存で保存可能なはず）
function player_manager:update/player_dat/player_common/inventory/

#個人ストレージを呼び出し
function #oh_my_dat:please

#インベントリが空でない状態で保存処理が行われたら墓の数を一つ増やす
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory[-1] run scoreboard players add $TombCounter tomb_count 1

#保存したストレージを死亡ストレージの末尾に追加（インベントリが空であれば弾く）
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory[-1] run data modify storage tusb_ad:player_manager tomb append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory

#ログ
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory[-1] run say 墓を保存しました
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory[-1] run say アイテムが空なので墓を保存できませんでした...