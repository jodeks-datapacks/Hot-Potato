schedule clear hotpotato:app/game/cooldown
bossbar remove hotpotato:explosion_time

scoreboard players set &game_running hotpotato.root 0

execute as @a[tag=hotpotato.has_potato] run item replace entity @s armor.head with minecraft:air

team empty hotpotato.players

tag @a remove hotpotato.in_game
tag @a remove hotpotato.has_potato
tag @a remove hotpotato.had_potato

execute as @a run attribute @s minecraft:waypoint_transmit_range base reset

scoreboard players reset &cooldown_before_start_counter hotpotato.root