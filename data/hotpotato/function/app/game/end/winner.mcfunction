scoreboard players set &potato_check hotpotato.root 1

schedule clear hotpotato:app/game/bossbar/schedule
schedule clear hotpotato:app/game/cooldown
bossbar remove hotpotato:explosion_time

execute as @a[tag=hotpotato.has_potato] run item replace entity @s armor.head with minecraft:air

title @a times 10 80 10
title @a actionbar [{"text":"Player "},{"selector":"@s"},{"text":" is the winner!"}]

# Summon rockets

tag @a remove hotpotato.in_game
tag @a remove hotpotato.has_potato
tag @a remove hotpotato.exploded