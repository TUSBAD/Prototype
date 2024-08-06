

# (トリガー検知はしてないけど)トリガーが発動したときにどういうフローで実行されるかというテスト


# ステータスをstorageに設定


# 設定したらfunc呼び出しでplayer storageに値を設定

# 攻撃力+10%
data modify storage tusb_ad:api argument.uuid set value [I;0,0,0,0]
data modify storage tusb_ad:api argument.amount set value 10.0f
data modify storage tusb_ad:api argument.operation set value "multiply_base"

# 攻撃力上昇セット呼び出し
function api:stat/attack/