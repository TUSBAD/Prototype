#> gui:main/summon/reset
#
# GUIをリセットする
#
# @within function gui:main/summon/

# test:true
    data modify storage gui: test set value true

# 視線の位置にtp
    execute at @p[tag=This] anchored eyes run tp @s ^ ^ ^