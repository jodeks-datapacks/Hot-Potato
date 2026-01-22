execute if data entity @s equipment.head run function hotpotato:app/game/end/force
title @a times 10 80 10
execute if data entity @s equipment.head run return run title @a actionbar [{"text":"Player "},{"selector":"@s"},{"text":" has something equipped to their head! Can't start game"}]

tag @s add hotpotato.has_potato
item replace entity @s armor.head with minecraft:potato

execute at @s run playsound minecraft:item.totem.use voice @a ~ ~ ~ 1 1 1