#> api:stat/attack/get
#
# 指定値が入力されていればその値を返す(現状tellrawのみ)
#
# @api

# 呼び出し
function #oh_my_dat:please

# とりあえず無条件でそれぞれの値を返す
tellraw @a [{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.add", "storage": "oh_my_dat:"}, {"text": "がaddの値です"}]
tellraw @a [{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.multiply_base", "storage": "oh_my_dat:"}, {"text": "がmultiply_baseの値です"}]
tellraw @a [{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.multiply", "storage": "oh_my_dat:"}, {"text": "がmultiplyの値です"}]
tellraw @a [{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.total", "storage": "oh_my_dat:"}, {"text": "がtotalの値です"}]

tellraw @a [{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].modifier.attack.physical.list", "storage": "oh_my_dat:"}, {"text": "がlistの値です"}]