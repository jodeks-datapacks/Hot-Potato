scoreboard players set &potato_check hotpotato.root 1

schedule clear hotpotato:app/game/cooldown
bossbar remove hotpotato:explosion_time

item replace entity @s armor.head with minecraft:air

title @a times 1s 5s 1s
title @a actionbar [{"selector":"@s"},{"text":" had the potato and was removed from the game, so the game got calceled!"}]

execute at @s run playsound minecraft:block.anvil.destroy voice @a ~ ~ ~ 1 1 1

tag @a remove hotpotato.in_game
tag @a remove hotpotato.has_potato
tag @a remove hotpotato.exploded