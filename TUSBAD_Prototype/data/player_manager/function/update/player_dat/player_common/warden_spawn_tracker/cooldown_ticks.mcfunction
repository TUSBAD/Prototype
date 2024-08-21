#> player_manager:update/player_dat/player_common/warden_spawn_tracker/cooldown_ticks
# プレイヤーNBT（プレイヤー固有）、ウォーデンのスポーン関係のNBT（警戒レベルが再度増加するまでに必要なティック数）

function #oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].warden_spawn_tracker.cooldown_ticks set from entity @s warden_spawn_tracker.cooldown_ticks