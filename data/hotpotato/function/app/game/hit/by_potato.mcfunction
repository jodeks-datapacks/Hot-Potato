advancement revoke @s only hotpotato:hit_by_potato

title @a times 0 100 0
execute if data entity @s equipment.head run return run title @a subtitle [{"text":"Player "},{"selector":"@s"},{"text":" has something equipped to their head! Can't transfer potato"}]
execute if entity @s[tag=hotpotato.exploded] run return run title @a subtitle [{"text":"Player "},{"selector":"@s"},{"text":" is already exploded! Can't transfer potato"}]
execute unless entity @s[tag=hotpotato.in_game] run return run title @a subtitle [{"text":"Player "},{"selector":"@s"},{"text":" is not in the game! Can't transfer potato"}]
execute unless score &cooldown_counter hotpotato.config = &cooldown hotpotato.config run return fail

schedule function hotpotato:app/game/cooldown 1s

execute on attacker run tag @s remove hotpotato.has_potato
execute on attacker run item replace entity @s armor.head with air

tag @s add hotpotato.has_potato
item replace entity @s armor.head with potato