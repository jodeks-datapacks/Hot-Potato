scoreboard players set &potato_check hotpotato.root 1

bossbar remove hotpotato:explosion_time

schedule clear hotpotato:app/game/cooldown

execute as @a[tag=hotpotato.has_potato] run item replace entity @s armor.head with minecraft:air

title @a times 10 320 10
title @a actionbar [{"text":"Player "},{"selector":"@s"},{"text":" has something equipped to their head! Can't start game"}]

tag @a remove hotpotato.in_game
tag @a remove hotpotato.has_potato
tag @a remove hotpotato.exploded