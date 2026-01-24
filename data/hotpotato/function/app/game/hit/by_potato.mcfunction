advancement revoke @s only hotpotato:hit_by_potato

title @a times 10 320 10
execute if data entity @s equipment.head run return run title @a actionbar [{"text":"Player "},{"selector":"@s"},{"text":" has something equipped to their head! Can't transfer potato"}]
execute if entity @s[tag=hotpotato.exploded] run return run title @a actionbar [{"text":"Player "},{"selector":"@s"},{"text":" is already exploded! Can't transfer potato"}]
execute unless entity @s[tag=hotpotato.in_game] run return run title @a actionbar [{"text":"Player "},{"selector":"@s"},{"text":" is not in the game! Can't transfer potato"}]
execute unless score &cooldown_counter hotpotato.root = &cooldown hotpotato.root run return fail

schedule function hotpotato:app/game/cooldown 1t

scoreboard players set &potato_check hotpotato.root 1

execute on attacker run tag @s remove hotpotato.has_potato
execute on attacker run item replace entity @s armor.head with air

tag @s add hotpotato.has_potato
item replace entity @s armor.head with minecraft:potato[custom_data={hotpotato:true},enchantments={binding_curse:1}]

scoreboard players set &potato_check hotpotato.root 0