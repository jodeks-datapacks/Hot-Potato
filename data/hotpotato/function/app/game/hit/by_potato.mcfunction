advancement revoke @s only hotpotato:hit_by_potato

execute if score &no_immediate_retagging hotpotato.root matches 1 if score &players_in_game hotpotato.root matches 3.. if entity @s[tag=hotpotato.had_potato] run return run title @a[tag=hotpotato.has_potato] actionbar [{"selector":"@s",color:"white"},{"text":" just had the potato! Can't transfer again yet"}]
execute if data entity @s equipment.head run return run title @a[tag=hotpotato.has_potato] actionbar [{"selector":"@s"},{"text":" has something equipped to their head! Can't transfer potato"}]
execute unless entity @s[tag=hotpotato.in_game] run return run title @a[tag=hotpotato.has_potato] actionbar [{"selector":"@s"},{"text":" is not in the game! Can't transfer potato"}]
execute unless score &cooldown_counter hotpotato.root = &cooldown hotpotato.root run return fail

schedule function hotpotato:app/game/cooldown 1t

execute if entity @s[tag=!hotpotato.had_potato] run tag @a remove hotpotato.had_potato

execute on attacker run tag @s remove hotpotato.has_potato
execute on attacker run tag @s add hotpotato.had_potato
execute on attacker run item replace entity @s armor.head with air
execute on attacker run attribute @s minecraft:waypoint_transmit_range base reset

tag @s add hotpotato.has_potato
execute if score &potato_model hotpotato.root matches 0 run item replace entity @s armor.head with minecraft:baked_potato[custom_data={hotpotato:true},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute if score &potato_model hotpotato.root matches 1 run item replace entity @s armor.head with minecraft:baked_potato[item_model="rottenblock:hot_potato",custom_data={hotpotato:true},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute if score &potato_model hotpotato.root matches 2 run item replace entity @s armor.head with minecraft:baked_potato[item_model="rottenblock:potatohead",custom_data={hotpotato:true},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute if score &potato_model hotpotato.root matches 3 run item replace entity @s armor.head with minecraft:baked_potato[item_model="hotpotato:hotpotato",custom_data={hotpotato:true},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={hidden_components:["enchantments"]}]

execute if score &locator_bar hotpotato.root matches 1 run attribute @s minecraft:waypoint_transmit_range base set 0

execute at @s run playsound minecraft:item.firecharge.use voice @a ~ ~ ~ 5 1 1