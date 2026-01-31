execute unless entity @a run return fail

scoreboard players set &game_running hotpotato.root 1

execute as @r run function hotpotato:app/game/random_player_init

# Bossbar with timer
bossbar add hotpotato:explosion_time "Hot Potato Explosion Timer"
$bossbar set hotpotato:explosion_time max $(explosion_time)
bossbar set hotpotato:explosion_time name [{"text":"Hot Potato Explosion Timer"}]
bossbar set hotpotato:explosion_time players @a
bossbar set hotpotato:explosion_time color yellow

tag @a add hotpotato.in_game
execute store result score &players_in_game hotpotato.root run list

execute if score &player_display hotpotato.root matches 1 run effect give @a[tag=hotpotato.has_potato] minecraft:glowing 1 0 true
execute if score &player_display hotpotato.root matches 1.. run team join hotpotato.players @a[tag=hotpotato.in_game]