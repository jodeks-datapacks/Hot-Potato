# Static values
$data modify storage hotpotato:root explosion_time set value $(dialog_explosion_time)
$data modify storage hotpotato:root cooldown set value $(dialog_cooldown)

$scoreboard players set &explosion_time hotpotato.root $(dialog_explosion_time)
$scoreboard players set &cooldown hotpotato.root $(dialog_cooldown)
$scoreboard players set &cooldown_before_start hotpotato.root $(dialog_cooldown_before_start)

$scoreboard players set &player_display hotpotato.root $(dialog_player_display)

# Counters
$data modify storage hotpotato:root explosion_time_counter set value $(dialog_explosion_time)
$data modify storage hotpotato:root cooldown_counter set value $(dialog_cooldown)

$scoreboard players set &explosion_time_counter hotpotato.root $(dialog_explosion_time)
$scoreboard players set &cooldown_counter hotpotato.root $(dialog_cooldown)
$scoreboard players set &cooldown_before_start_counter hotpotato.root $(dialog_cooldown_before_start)