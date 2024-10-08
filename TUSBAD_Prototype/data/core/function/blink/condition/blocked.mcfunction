# チェックした時にブロックがあったときの処理


say blocked!
# ループ回数がブリンクの最大数の6割未満ならそもそもtpしない

# 6割以上なら現在召喚しているmarkerの部分までtpする(これめり込む場所にtpしてるからめり込む一個前にtpさせないといけないんだよな、、w)
execute if score blink temp matches 35.. run tp @a[tag=used_blink] @s

# marker削除
kill @s

# プレイヤータグ削除
tag @a[tag=used_blink] remove used_blink

# 判定用のためにblinkスコアを-1に
scoreboard players set blink temp -1