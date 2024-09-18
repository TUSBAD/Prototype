#> api:stat/test/delete

# uuidをセット
data modify storage tusb_ad:api argument.uuid set value [I;0,0,0,0]

# 消す
function api:stat/attack/remove

# uuidをセット
data modify storage tusb_ad:api argument.uuid set value [I;0,0,0,1]

# 消す
function api:stat/attack/remove

# uuidをセット
data modify storage tusb_ad:api argument.uuid set value [I;0,0,0,2]

# 消す
function api:stat/attack/remove


# uuidをセット
data modify storage tusb_ad:api argument.uuid set value [I;0,0,0,3]

# 消す
function api:stat/attack/remove