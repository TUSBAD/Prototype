

# (トリガー検知はしてないけど)トリガーが発動したときにどういうフローで実行されるかというテスト


# ステータスをstorageに設定


# 設定したらfunc呼び出しでplayer storageに値を設定

# 攻撃力+100
data modify storage tusb_ad:api argument.uuid set value [I;0,0,0,0]
data modify storage tusb_ad:api argument.amount set value 100.0f
data modify storage tusb_ad:api argument.operation set value "add_base"

# 攻撃力上昇セット呼び出し
function api:stat/attack/add

# 攻撃力+10%
data modify storage tusb_ad:api argument.uuid set value [I;0,0,0,1]
data modify storage tusb_ad:api argument.amount set value 10.0f
data modify storage tusb_ad:api argument.operation set value "multiply_base"

# 攻撃力上昇セット呼び出し
function api:stat/attack/add

# 攻撃力さらに+40%
data modify storage tusb_ad:api argument.uuid set value [I;0,0,0,2]
data modify storage tusb_ad:api argument.amount set value 40.0f
data modify storage tusb_ad:api argument.operation set value "multiply_base"

# 攻撃力上昇セット呼び出し
function api:stat/attack/add

# 攻撃力x100%(2x)
data modify storage tusb_ad:api argument.uuid set value [I;0,0,0,3]
data modify storage tusb_ad:api argument.amount set value 100.0f
data modify storage tusb_ad:api argument.operation set value "multiply"

# 攻撃力上昇セット呼び出し
function api:stat/attack/add