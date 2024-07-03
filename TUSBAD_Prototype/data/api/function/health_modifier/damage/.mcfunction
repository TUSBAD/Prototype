# 仕様
# 対象(プレイヤー/それ以外)にダメージを与えます。
# ダメージは各種ダメージタイプに対応しており、計算できる部分は内部で計算し、
# 適応します。scoreboardの値上限も相まって、一定の誤差は発生します。
# 割合でダメージを与えることも可能です。

# 期待されるinput
# 実行者(@s、自動みたいなもんだけど。)、その最大体力、体力、緩衝体力
# ダメージ量
# ダメージタイプ(なに由来とか)
# オプション(cd貫通など)


# ここだけdamageコマンドで実行するのでそれぞれdamagetypeを用意してあげないといけない

# tag付けしないといけないもの

# cd無視
# 盾貫通

# 大事なのは、これが増えていくと、指数関数的にダメージタイプを作らないといけないのでなるべく内部で計算するということ。

# 足りないのはエラーを出す
execute unless data storage tusb_ad:api damage_amount run tellraw @a "与えたいダメージの値が設定されていません！"
# 任意部分はデフォルト引数を追加
execute unless data storage tusb_ad:api is_use_percentage run data modify storage tusb_ad:api is_use_percentage set value false
# いろいろな設定
# IsFire,IsFall,IsBlast,IsProjectile,IgnoreCD,IgnoreShield,IgnoreDef(耐性、防具全部無視)、IgnoreArmor,IgnoreProtection,IgnoreResistance
execute unless data storage tusb_ad:api is_use_percentage run data modify storage tusb_ad:api is_use_percentage set value false

# 設定に応じてfunction実行