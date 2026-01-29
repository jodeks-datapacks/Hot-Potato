scoreboard players set &game_running hotpotato.root 0

function hotpotato:app/game/clear

title @a times 10 320 10
title @a actionbar [{"text":"Player "},{"selector":"@s"},{"text":" is the winner!"}]

# Summon fireworks
execute at @s run summon firework_rocket ~3 ~3 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16766720,16750848],fade_colors:[I;16777045]}]}}}}
execute at @s run summon firework_rocket ~-3 ~3 ~ {LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16766720,16750848],fade_colors:[I;16777045]}]}}}}
execute at @s run summon firework_rocket ~ ~3 ~3 {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16766720,16750848],fade_colors:[I;16777045]}]}}}}
execute at @s run summon firework_rocket ~ ~3 ~-3 {LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16766720,16750848],fade_colors:[I;16777045]}]}}}}

execute at @s run summon firework_rocket ~2 ~3 ~2 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680,16744448],fade_colors:[I;16776960]}]}}}}
execute at @s run summon firework_rocket ~-2 ~3 ~2 {LifeTime:35,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680,16744448],fade_colors:[I;16776960]}]}}}}
execute at @s run summon firework_rocket ~2 ~3 ~-2 {LifeTime:35,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680,16744448],fade_colors:[I;16776960]}]}}}}
execute at @s run summon firework_rocket ~-2 ~3 ~-2 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680,16744448],fade_colors:[I;16776960]}]}}}}

execute at @s run summon firework_rocket ~ ~3 ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16777215,16766720],fade_colors:[I;16766720,16711680]}]}}}}

execute at @s run summon firework_rocket ~1.5 ~3 ~1.5 {LifeTime:45,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"creeper",has_twinkle:true,has_trail:true,colors:[I;65280],fade_colors:[I;16777045]}]}}}}
execute at @s run summon firework_rocket ~-1.5 ~3 ~-1.5 {LifeTime:50,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"creeper",has_twinkle:true,has_trail:true,colors:[I;65280],fade_colors:[I;16777045]}]}}}}