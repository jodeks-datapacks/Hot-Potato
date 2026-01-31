execute unless score &cooldown_counter hotpotato.root matches 0 run scoreboard players remove &cooldown_counter hotpotato.root 1

execute unless score &cooldown_counter hotpotato.root matches 0 run schedule function hotpotato:app/game/cooldown 1s

title @a[tag=hotpotato.has_potato] times 10 320 10
title @a[tag=hotpotato.has_potato] actionbar [{"text":"Cooldown: "},{"score":{"name":"&cooldown_counter","objective":"hotpotato.root"}},{"text":"s"}]

execute if score &cooldown_counter hotpotato.root matches 0 run title @a[tag=hotpotato.has_potato] actionbar ""
execute if score &cooldown_counter hotpotato.root matches 0 run scoreboard players operation &cooldown_counter hotpotato.root = &cooldown hotpotato.root