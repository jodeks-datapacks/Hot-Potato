scoreboard players remove &explosion_time_counter hotpotato.root 1
execute store result storage hotpotato:root explosion_time_counter int 1 run scoreboard players get &explosion_time_counter hotpotato.root

function hotpotato:app/game/bossbar/set with storage hotpotato:root