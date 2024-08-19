#> asset:factory/mob/
# モブの実体化処理
# モブ一時保存用ストレージ tusb_ad:asset required_mob

#指定されたID,ポス、NBTで召喚
$summon $(mobID) $(pos1) $(pos2) $(pos3) $(nbt_data)

#一時保存のストレージをクリアする
data remove storage tusb_ad:asset required_mob
