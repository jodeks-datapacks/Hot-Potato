advancement revoke @a only hotpotato:no_potato_on_head

scoreboard players set &potato_check hotpotato.root 1

schedule clear hotpotato:app/game/cooldown
bossbar remove hotpotato:explosion_time

execute as @a[tag=hotpotato.has_potato] run item modify entity @s armor.head hotpotato:remove_potato_from_head

# item replace entity @s player.cursor with minecraft:air
kill @e[type=item,nbt={Item:{id:"minecraft:potato",components:{"minecraft:custom_data":{"hotpotato":true}}}},sort=nearest]

title @a times 1s 5s 1s
title @a actionbar [{"selector":"@s"},{"text":" tried to steal the potato, so the game got calceled!"}]

execute at @s run playsound minecraft:block.anvil.destroy voice @a ~ ~ ~ 1 1 1

tag @a remove hotpotato.in_game
tag @a remove hotpotato.has_potato
tag @a remove hotpotato.exploded

# item modify entity @s inventory.0 hotpotato:check_inventory/0
# item modify entity @s inventory.1 hotpotato:check_inventory/1
# item modify entity @s inventory.2 hotpotato:check_inventory/2
# item modify entity @s inventory.3 hotpotato:check_inventory/3
# item modify entity @s inventory.4 hotpotato:check_inventory/4
# item modify entity @s inventory.5 hotpotato:check_inventory/5
# item modify entity @s inventory.6 hotpotato:check_inventory/6
# item modify entity @s inventory.7 hotpotato:check_inventory/7
# item modify entity @s inventory.8 hotpotato:check_inventory/8
# item modify entity @s inventory.9 hotpotato:check_inventory/9
# item modify entity @s inventory.10 hotpotato:check_inventory/10
# item modify entity @s inventory.11 hotpotato:check_inventory/11
# item modify entity @s inventory.12 hotpotato:check_inventory/12
# item modify entity @s inventory.13 hotpotato:check_inventory/13
# item modify entity @s inventory.14 hotpotato:check_inventory/14
# item modify entity @s inventory.15 hotpotato:check_inventory/15
# item modify entity @s inventory.16 hotpotato:check_inventory/16
# item modify entity @s inventory.17 hotpotato:check_inventory/17
# item modify entity @s inventory.18 hotpotato:check_inventory/18
# item modify entity @s inventory.19 hotpotato:check_inventory/19
# item modify entity @s inventory.20 hotpotato:check_inventory/20
# item modify entity @s inventory.21 hotpotato:check_inventory/21
# item modify entity @s inventory.22 hotpotato:check_inventory/22
# item modify entity @s inventory.23 hotpotato:check_inventory/23
# item modify entity @s inventory.24 hotpotato:check_inventory/24
# item modify entity @s inventory.25 hotpotato:check_inventory/25
# item modify entity @s inventory.26 hotpotato:check_inventory/26

# item modify entity @s hotbar.0 hotpotato:check_hotbar/0
# item modify entity @s hotbar.1 hotpotato:check_hotbar/1
# item modify entity @s hotbar.2 hotpotato:check_hotbar/2
# item modify entity @s hotbar.3 hotpotato:check_hotbar/3
# item modify entity @s hotbar.4 hotpotato:check_hotbar/4
# item modify entity @s hotbar.5 hotpotato:check_hotbar/5
# item modify entity @s hotbar.6 hotpotato:check_hotbar/6
# item modify entity @s hotbar.7 hotpotato:check_hotbar/7
# item modify entity @s hotbar.8 hotpotato:check_hotbar/8
# item modify entity @s weapon.offhand hotpotato:check_hotbar/offhand