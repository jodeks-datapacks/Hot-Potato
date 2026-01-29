scoreboard players set &game_running hotpotato.root 0

function hotpotato:app/game/clear

title @a times 10 320 10
title @a actionbar [{"text":"Player "},{"selector":"@s"},{"text":" has something equipped to their head! Can't start game"}]