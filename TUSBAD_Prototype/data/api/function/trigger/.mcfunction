#> api:trigger/
# 各種トリガーのスコア

#杖を使用したら系トリガー
 #人参棒
scoreboard objectives add carrot_use used:carrot_on_a_stick
 #歪んだキノコ棒
scoreboard objectives add fungus_use used:warped_fungus_on_a_stick

#アイテムを使ったら系トリガー
 #何かしらの食事
scoreboard objectives add any_eat food

#対象を倒したら系トリガー
 #何かしらの討伐
scoreboard objectives add any_defated totalKillCount

#死亡数カウント
 #自身死亡
scoreboard objectives add my_dead deathCount

#インベントリにあったら系トリガー
 #処理イメージ
  #特定のIDのアイテムを持っている間は進捗でフラグをONにする。
  #持っていないときは常時フラグをOffにする


#発射したら系トリガー
#ホットバーにあったら系トリガー→アドバンスメント
#防具を装備していたら系トリガー
#防具を着脱したら系トリガー
#攻撃を対象に当てたら系トリガー
#常時系トリガー

#被ダメージで系トリガー(ダメージソースによる細分化もありか？)
#スニークしたら系トリガー(時間つけてもよい。また、経過したら発動or経過してスニークをやめたら発動で分けたい)
#ガードしたら系トリガー

