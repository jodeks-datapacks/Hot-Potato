# execute if score &cooldown hotpotato.root = &cooldown_counter hotpotato.root run scoreboard players operation &cooldown_counter hotpotato.root = &cooldown hotpotato.root

scoreboard players remove &cooldown_counter hotpotato.root 1

title @a times 10 80 10
title @a actionbar [{"text":"Cooldown: "},{"score":{"name":"&cooldown_counter","objective":"hotpotato.root"}},{"text":"s"}]

execute if score &cooldown_counter hotpotato.root matches 0 run title @a actionbar ""

execute unless score &cooldown_counter hotpotato.root matches 0 run schedule function hotpotato:app/game/cooldown 1s
execute if score &cooldown_counter hotpotato.root matches 0 run scoreboard players operation &cooldown_counter hotpotato.root = &cooldown hotpotato.root