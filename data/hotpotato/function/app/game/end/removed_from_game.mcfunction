scoreboard players set &game_running hotpotato.root 0

function hotpotato:app/game/clear

title @a times 1s 5s 1s
title @a actionbar [{"selector":"@s"},{"text":" had the potato and was removed from the game, so the game got calceled!"}]

execute at @s run playsound minecraft:block.anvil.destroy voice @a ~ ~ ~ 1 1 1