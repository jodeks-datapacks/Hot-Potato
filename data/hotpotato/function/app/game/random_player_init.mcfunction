title @a times 10 320 10
execute if data entity @s equipment.head run return run function hotpotato:app/game/end/item_on_head

tag @s add hotpotato.has_potato
execute if score &potato_model hotpotato.root matches 0 run item replace entity @s armor.head with minecraft:baked_potato[custom_data={hotpotato:true},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute if score &potato_model hotpotato.root matches 1 run item replace entity @s armor.head with minecraft:baked_potato[item_model="rottenblock:hot_potato",custom_data={hotpotato:true},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute if score &potato_model hotpotato.root matches 2 run item replace entity @s armor.head with minecraft:baked_potato[item_model="rottenblock:potatohead",custom_data={hotpotato:true},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute if score &potato_model hotpotato.root matches 3 run item replace entity @s armor.head with minecraft:baked_potato[item_model="hotpotato:hotpotato",custom_data={hotpotato:true},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={hidden_components:["enchantments"]}]

execute if score &locator_bar hotpotato.root matches 1 run attribute @s minecraft:waypoint_transmit_range base set 0

execute at @s run playsound minecraft:item.totem.use voice @a ~ ~ ~ 1 1 1

schedule function hotpotato:app/game/cooldown 1t