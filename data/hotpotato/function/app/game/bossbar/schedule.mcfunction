execute if entity @a[tag=hotpotato.has_potato] run schedule function hotpotato:app/game/bossbar/schedule 1s

scoreboard players remove &explosion_time_counter hotpotato.config 1
execute store result storage hotpotato:root explosion_time_counter int 1 run scoreboard players get &explosion_time_counter hotpotato.config

function hotpotato:app/game/bossbar/set with storage hotpotato:root