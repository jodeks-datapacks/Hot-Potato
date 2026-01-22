execute if data entity @s equipment.head run function hotpotato:app/game/end
execute if data entity @s equipment.head run return run title @a subtitle [{"text":"Player "},{"selector":"@s"},{"text":" has something equipped to their head! Can't start game"}]

tag @s add hotpotato.has_potato