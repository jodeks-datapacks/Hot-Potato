schedule clear hotpotato:app/game/bossbar/schedule
schedule clear hotpotato:app/game/cooldown
bossbar remove hotpotato:explosion_time

title @a times 0 100 0
title @a title [{"text":"Game canceled! No winner."}]

tag @a remove hotpotato.in_game
tag @a remove hotpotato.has_potato
tag @a remove hotpotato.exploded