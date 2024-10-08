

# 該当markerにtp
tp @a[tag=used_blink] @e[type=marker,tag=blink,limit=1]

# これrotated asでやってるせいで、tpするときに向きが反映されなくて終わってる



# marker削除
kill @e[type=marker,tag=blink,limit=1]

# プレイヤータグ削除
tag @a[tag=used_blink] remove used_blink