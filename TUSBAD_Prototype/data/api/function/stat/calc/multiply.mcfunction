#> api:stat/calc/multiply
#
# multiplyの取得をし、別のstorageに保存する

data modify storage tusb_ad:api multiply append from storage tusb_ad:api test_op.amount

# このタイミングで中身を確認
tellraw @a [{"text":"multiplyの中身: "},{"storage":"tusb_ad:api","nbt":"multiply"}]