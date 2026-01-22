advancement revoke @s only hotpotato:explode

damage @s 10000 minecraft:outside_border by @a[tag=hotpotato.has_potato,limit=1]

tag @s remove hotpotato.has_potato
tag @s add hotpotato.exploded

scoreboard players remove &players_in_game hotpotato.config 1

execute if score &players_in_game hotpotato.config matches 1 run execute as @a[tag=hotpotato.in_game,tag=!hotpotato.exploded] run function hotpotato:app/game/end/winner

execute store result score &explosion_time_counter hotpotato.config run scoreboard players get &explosion_time hotpotato.config
execute store result storage hotpotato:root explosion_time_counter int 1 run scoreboard players get &explosion_time hotpotato.config