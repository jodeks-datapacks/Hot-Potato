$tag $(dialog_player_name) add hotpotato.in_game

execute if score &player_display hotpotato.root matches 1 run effect give @a[tag=hotpotato.in_game] minecraft:glowing infinite 0 true
execute if score &player_display hotpotato.root matches 2 run team join hotpotato.players @a[tag=hotpotato.in_game]

dialog show @s hotpotato:hot_potato_players