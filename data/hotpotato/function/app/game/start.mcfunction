scoreboard players set &game_running hotpotato.root 1

# Bossbar with timer
bossbar add hotpotato:explosion_time "Hot Potato Explosion Timer"
$bossbar set hotpotato:explosion_time max $(explosion_time)
bossbar set hotpotato:explosion_time name [{"text":"Hot Potato Explosion Timer"}]
bossbar set hotpotato:explosion_time players @a
bossbar set hotpotato:explosion_time color yellow

execute as @r run function hotpotato:app/game/random_player_init

tag @a add hotpotato.in_game
execute store result score &players_in_game hotpotato.root run list

execute if score &player_display hotpotato.root matches 1 run effect give @a[tag=hotpotato.in_game] minecraft:glowing infinite 0 true
execute if score &player_display hotpotato.root matches 2 run team join hotpotato.players @a[tag=hotpotato.in_game]