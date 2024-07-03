
# 体力をもとに戻します

# ここで体力がどう変化してるか次第、attributeを減らしても値が20残ってたら意味がないのでね。

# 多分同tickにattributeいじると回復引き継いだりしておかしくなる？
# 異なるtickならOKぽい
# でもここdamageないとおかしくなった気がするんだけどなぁ。


# これ1.20.4はdamageで更新しないとだめ、1.21はそうでなくてもいい?
# それかコマブロによって仕様が変わるとか
# →2tick後だった

# damage @p[tag=Applyed] 0.0001

attribute @p[tag=applyed] generic.max_absorption modifier remove ee3b6c11-8fcb-48ba-a279-e8458492890c

say removed

tag @a remove applyed