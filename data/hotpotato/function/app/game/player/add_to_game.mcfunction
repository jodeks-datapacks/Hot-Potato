$tag $(dialog_player_name) add hotpotato.in_game

execute if score &player_display hotpotato.root matches 1 run effect give @a[tag=hotpotato.has_potato] minecraft:glowing 1 0 true
execute if score &player_display hotpotato.root matches 1.. run team join hotpotato.players @a[tag=hotpotato.in_game]

scoreboard players add &players_in_game hotpotato.root 1

dialog show @s hotpotato:hot_potato_players