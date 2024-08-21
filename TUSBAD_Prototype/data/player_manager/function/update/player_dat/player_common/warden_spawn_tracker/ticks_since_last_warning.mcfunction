#> player_manager:update/player_dat/player_common/warden_spawn_tracker/ticks_since_last_warning
# プレイヤーNBT（プレイヤー固有）、ウォーデンのスポーン関係のNBT（ウォーデン出現を警告されてからの経過ティック数）

function #oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].warden_spawn_tracker.ticks_since_last_warning set from entity @s warden_spawn_tracker.ticks_since_last_warning