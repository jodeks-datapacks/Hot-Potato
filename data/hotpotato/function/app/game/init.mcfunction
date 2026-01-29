# Static values
$data modify storage hotpotato:root explosion_time set value $(dialog_explosion_time)
$data modify storage hotpotato:root cooldown set value $(dialog_cooldown)

$scoreboard players set &explosion_time hotpotato.root $(dialog_explosion_time)
$scoreboard players set &cooldown hotpotato.root $(dialog_cooldown)
$scoreboard players set &cooldown_before_start hotpotato.root $(dialog_cooldown_before_start)
$scoreboard players set &speed_before_explosion hotpotato.root $(dialog_speed_before_explosion)

$scoreboard players set &player_display hotpotato.root $(dialog_player_display)
$scoreboard players set &player_particles hotpotato.root $(dialog_player_particles)

# Counters
$data modify storage hotpotato:root explosion_time_counter set value $(dialog_explosion_time)
$data modify storage hotpotato:root cooldown_counter set value $(dialog_cooldown)

$scoreboard players set &explosion_time_counter hotpotato.root $(dialog_explosion_time)
$scoreboard players set &cooldown_counter hotpotato.root $(dialog_cooldown)
$scoreboard players set &cooldown_before_start_counter hotpotato.root $(dialog_cooldown_before_start)

execute store result score &speed_before_explosion_counter hotpotato.root run scoreboard players operation &explosion_time hotpotato.root -= &speed_before_explosion hotpotato.root

$team modify hotpotato.players color $(dialog_player_display_color)

function hotpotato:app/game/start with storage hotpotato:root