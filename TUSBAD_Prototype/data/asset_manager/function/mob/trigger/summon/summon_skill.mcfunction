#> asset_manager:mob/trigger/summon/summon_skill
# 召喚時発動スキルのトリガー

# ここにスキルを発動する敵のIDを入れてマクロで発動？
$function asset:mob/$(mob)/summon/
#召喚時スキル使用済みモブにはタグ「use_summon_skill」を付与
tag @s add use_summon_skill