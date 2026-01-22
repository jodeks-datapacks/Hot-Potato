# Static values
$data modify storage hotpotato:root explosion_time set value $(dialog_explosion_time)
$data modify storage hotpotato:root cooldown set value $(dialog_cooldown)

$scoreboard players set &explosion_time hotpotato.config $(dialog_explosion_time)
$scoreboard players set &cooldown hotpotato.config $(dialog_cooldown)

# Counters
$data modify storage hotpotato:root explosion_time_counter set value $(dialog_explosion_time)
$data modify storage hotpotato:root cooldown_counter set value $(dialog_cooldown)

$scoreboard players set &explosion_time_counter hotpotato.config $(dialog_explosion_time)
$scoreboard players set &cooldown_counter hotpotato.config $(dialog_cooldown)

tag @a add hotpotato.in_game
execute store result score &players_in_game hotpotato.config run list

execute as @r run function hotpotato:app/game/random_player_init

# Bossbar with timer
bossbar add hotpotato:explosion_time "Hot Potato Explosion Timer"
$bossbar set hotpotato:explosion_time max $(dialog_explosion_time)
function hotpotato:app/game/bossbar/schedule with storage hotpotato:root


# Playsound on slected player

# Effect visuals on selected player

# Custom death message