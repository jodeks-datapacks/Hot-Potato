# Static values
$data modify storage hotpotato:root explosion_time set value $(dialog_explosion_time)
$data modify storage hotpotato:root cooldown set value $(dialog_cooldown)

$scoreboard players set &explosion_time hotpotato.root $(dialog_explosion_time)
$scoreboard players set &cooldown hotpotato.root $(dialog_cooldown)

# Counters
$data modify storage hotpotato:root explosion_time_counter set value $(dialog_explosion_time)
$data modify storage hotpotato:root cooldown_counter set value $(dialog_cooldown)

$scoreboard players set &explosion_time_counter hotpotato.root $(dialog_explosion_time)
$scoreboard players set &cooldown_counter hotpotato.root $(dialog_cooldown)

execute as @r run function hotpotato:app/game/random_player_init

tag @a add hotpotato.in_game
execute store result score &players_in_game hotpotato.root run list

scoreboard players set &potato_check hotpotato.root 0

# Bossbar with timer
bossbar add hotpotato:explosion_time "Hot Potato Explosion Timer"
bossbar set hotpotato:explosion_time name [{"text":"Hot Potato Explosion Timer"}]
bossbar set hotpotato:explosion_time players @a
bossbar set hotpotato:explosion_time color yellow
$bossbar set hotpotato:explosion_time max $(dialog_explosion_time)
schedule function hotpotato:app/game/bossbar/schedule 1t

schedule function hotpotato:app/game/cooldown 1t


# Playsound on slected player

# Effect visuals on selected player

# Custom death message