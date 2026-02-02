schedule function hotpotato:app/scheduler 1s

execute if score &cooldown_before_start_counter hotpotato.root matches 0.. run title @a actionbar [{"text":"Game starts in "},{"score":{"name":"&cooldown_before_start_counter","objective":"hotpotato.root"}},{"text":"s"}]
execute if score &cooldown_before_start_counter hotpotato.root matches 0 run function hotpotato:app/game/start with storage hotpotato:root
execute if score &cooldown_before_start_counter hotpotato.root matches 0.. run scoreboard players remove &cooldown_before_start_counter hotpotato.root 1

execute if score &game_running hotpotato.root matches 1 run function hotpotato:app/game/bossbar/schedule
execute if score &game_running hotpotato.root matches 1 unless entity @a[tag=hotpotato.has_potato] run function hotpotato:app/game/end/force

execute if score &game_running hotpotato.root matches 1 if score &player_particles hotpotato.root matches 1 as @a[tag=hotpotato.has_potato] run function hotpotato:app/game/misc/particles

execute if score &game_running hotpotato.root matches 1 if score &player_saturation hotpotato.root matches 1 run effect give @a[tag=hotpotato.has_potato] minecraft:saturation 1 0 true

execute if score &speed_before_explosion_counter hotpotato.root matches 1.. run scoreboard players remove &speed_before_explosion_counter hotpotato.root 1
execute if score &speed_before_explosion_counter hotpotato.root matches 0 run effect give @a[tag=hotpotato.has_potato] minecraft:speed 1 1 true

execute if score &player_display hotpotato.root matches 2 run effect give @a[tag=hotpotato.in_game,tag=!hotpotato.has_potato] minecraft:glowing 1 0 true
execute if score &player_display hotpotato.root matches 3 run effect give @a[tag=hotpotato.has_potato] minecraft:glowing 1 0 true