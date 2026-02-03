execute if score &game_running hotpotato.root matches 1 run return run title @a actionbar [{"text":"Game is already running!"}]

$data modify storage hotpotato:root explosion_time set value $(dialog_explosion_time)

$scoreboard players set &explosion_time hotpotato.root $(dialog_explosion_time)
$scoreboard players set &cooldown hotpotato.root $(dialog_cooldown)
$scoreboard players set &cooldown_before_start hotpotato.root $(dialog_cooldown_before_start)
$scoreboard players set &speed_before_explosion hotpotato.root $(dialog_speed_before_explosion)

execute if score &explosion_time hotpotato.root matches ..1 run scoreboard players set &explosion_time hotpotato.root 1
execute if score &cooldown hotpotato.root matches ..0 run scoreboard players set &cooldown hotpotato.root 0
execute if score &cooldown_before_start hotpotato.root matches ..0 run scoreboard players set &cooldown_before_start hotpotato.root 0
execute if score &speed_before_explosion hotpotato.root matches ..0 run scoreboard players set &speed_before_explosion hotpotato.root 0

scoreboard players operation &explosion_time_counter hotpotato.root = &explosion_time hotpotato.root
scoreboard players operation &cooldown_counter hotpotato.root = &cooldown hotpotato.root
scoreboard players operation &cooldown_before_start_counter hotpotato.root = &cooldown_before_start hotpotato.root

$scoreboard players set &player_particles hotpotato.root $(dialog_player_particles)
$scoreboard players set &player_saturation hotpotato.root $(dialog_saturation)
$scoreboard players set &no_immediate_retagging hotpotato.root $(dialog_no_immediate_retagging)
$scoreboard players set &locator_bar hotpotato.root $(dialog_locator_bar)

$scoreboard players set &player_display hotpotato.root $(dialog_player_display)
$scoreboard players set &player_display_color hotpotato.root $(dialog_player_display_color)

$scoreboard players set &potato_model hotpotato.root $(dialog_potato_model)

scoreboard players operation &speed_before_explosion_counter hotpotato.root = &explosion_time hotpotato.root
scoreboard players operation &speed_before_explosion_counter hotpotato.root -= &speed_before_explosion hotpotato.root

execute if score &player_display_color hotpotato.root matches 0 run team modify hotpotato.players color black
execute if score &player_display_color hotpotato.root matches 1 run team modify hotpotato.players color dark_blue
execute if score &player_display_color hotpotato.root matches 2 run team modify hotpotato.players color dark_green
execute if score &player_display_color hotpotato.root matches 3 run team modify hotpotato.players color dark_aqua
execute if score &player_display_color hotpotato.root matches 4 run team modify hotpotato.players color dark_red
execute if score &player_display_color hotpotato.root matches 5 run team modify hotpotato.players color dark_purple
execute if score &player_display_color hotpotato.root matches 6 run team modify hotpotato.players color gold
execute if score &player_display_color hotpotato.root matches 7 run team modify hotpotato.players color gray
execute if score &player_display_color hotpotato.root matches 8 run team modify hotpotato.players color dark_gray
execute if score &player_display_color hotpotato.root matches 9 run team modify hotpotato.players color blue
execute if score &player_display_color hotpotato.root matches 10 run team modify hotpotato.players color green
execute if score &player_display_color hotpotato.root matches 11 run team modify hotpotato.players color aqua
execute if score &player_display_color hotpotato.root matches 12 run team modify hotpotato.players color red
execute if score &player_display_color hotpotato.root matches 13 run team modify hotpotato.players color light_purple
execute if score &player_display_color hotpotato.root matches 14 run team modify hotpotato.players color yellow
execute if score &player_display_color hotpotato.root matches 15 run team modify hotpotato.players color white