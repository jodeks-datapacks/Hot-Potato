advancement revoke @a only hotpotato:no_potato_on_head

scoreboard players set &potato_check hotpotato.root 1

schedule clear hotpotato:app/game/bossbar/schedule
schedule clear hotpotato:app/game/cooldown
bossbar remove hotpotato:explosion_time

execute as @a[tag=hotpotato.has_potato] run item replace entity @s armor.head with minecraft:air

item replace entity @s player.cursor with minecraft:air
kill @e[type=item,nbt={Item:{id:"minecraft:potato"}}]

title @a times 10 80 10
title @a actionbar [{"selector":"@s"},{"text":" tried to steal the potato, so the game got calceled!"}]

execute at @s run playsound minecraft:block.anvil.destroy voice @a ~ ~ ~ 1 1 1

tag @a remove hotpotato.in_game
tag @a remove hotpotato.has_potato
tag @a remove hotpotato.exploded