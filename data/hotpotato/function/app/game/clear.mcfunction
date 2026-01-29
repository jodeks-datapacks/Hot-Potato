schedule clear hotpotato:app/game/cooldown
bossbar remove hotpotato:explosion_time

execute as @a[tag=hotpotato.has_potato] run item replace entity @s armor.head with minecraft:air

effect clear @a[tag=hotpotato.in_game] minecraft:glowing
team empty hotpotato.players

effect clear @a[nbt={active_effects:[{id:"minecraft:speed",duration:-1}]}] speed

tag @a remove hotpotato.in_game
tag @a remove hotpotato.has_potato
tag @a remove hotpotato.exploded