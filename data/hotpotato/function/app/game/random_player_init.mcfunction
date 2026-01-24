title @a times 10 320 10
execute if data entity @s equipment.head run return run function hotpotato:app/game/end/item_on_head

tag @s add hotpotato.has_potato
item replace entity @s armor.head with minecraft:potato[custom_data={hotpotato:true}]

execute at @s run playsound minecraft:item.totem.use voice @a ~ ~ ~ 1 1 1

schedule function hotpotato:app/game/cooldown 1t