execute if score &cooldown hotpotato.config = &cooldown_counter hotpotato.config run scoreboard players operation &cooldown_counter hotpotato.config = &cooldown hotpotato.config

title @a times 0 100 0
title @a subtitle [{"text":"Cooldown: "},{"score":{"name":"&cooldown_counter","objective":"hotpotato.config"}},{"text":"s"}]

scoreboard players remove &cooldown_counter hotpotato.config 1

execute unless score &cooldown_counter hotpotato.config matches 0 run schedule function hotpotato:app/game/cooldown 1s
execute unless score &cooldown_counter hotpotato.config matches 0 run title @a clear