$execute as $(dialog_player_name) if entity @s[tag=hotpotato.has_potato] run function hotpotato:app/game/end/removed_from_game

$tag $(dialog_player_name) remove hotpotato.in_game
$tag $(dialog_player_name) remove hotpotato.has_potato
$tag $(dialog_player_name) remove hotpotato.exploded

$effect clear $(dialog_player_name) minecraft:glowing
$team leave hotpotato.players $(dialog_player_name)

dialog show @s hotpotato:hot_potato_players