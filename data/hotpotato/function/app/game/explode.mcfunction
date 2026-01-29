advancement revoke @s only hotpotato:explode

damage @s 10000 minecraft:outside_border by @a[tag=hotpotato.has_potato,limit=1]

tag @s remove hotpotato.has_potato
tag @s add hotpotato.exploded

title @a times 10 320 10
title @a actionbar [{"text":"Player "},{"selector":"@s"},{"text":" exploded!"}]
playsound entity.dragon_fireball.explode voice @a ~ ~ ~ 5 1 1

scoreboard players remove &players_in_game hotpotato.root 1

execute if score &players_in_game hotpotato.root matches 1 run execute as @a[tag=hotpotato.in_game,tag=!hotpotato.exploded] run function hotpotato:app/game/end/winner

execute if score &players_in_game hotpotato.root matches 2.. run execute as @r[tag=hotpotato.in_game,tag=!hotpotato.exploded] run function hotpotato:app/game/random_player_init

execute store result score &explosion_time_counter hotpotato.root run scoreboard players get &explosion_time hotpotato.root
execute store result storage hotpotato:root explosion_time_counter int 1 run scoreboard players get &explosion_time hotpotato.root