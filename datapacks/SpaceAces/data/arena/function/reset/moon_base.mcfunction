#Resets Arena: moon_base

# Makes sure the arena is loaded first
execute unless loaded 1023 92 0 run return run schedule function arena:reset/moon_base 1t

## Kill all arena entities
kill @e[tag=arena.moon_base]

## Skybox
summon item_display 1024.0 100 0.0 {Tags:["skybox","arena","arena.moon_base"],item:{id:"minecraft:black_concrete",count:1,components:{"minecraft:item_model":"skybox/moon_base"}},view_range:10f,shadow_radius:0f,shadow_strength:0f,billboard:"fixed",item_display:"ground",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[-127.9f,-127.9f,-127.9f]}}

## Terminal Holograms
# Large Computer Screen
summon item_display 1018 83 2.0 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/holo/overview"}},Rotation:[90f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}

# Planetary Defense
summon item_display 1022 82 5 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/holo/defense"}},Rotation:[0f,0f]}
# Atmosphere Levels
summon item_display 1022 82 -2 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/holo/atmosphere"}},Rotation:[0f,0f]}

# Welcome Center
summon item_display 1054 77 1 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/holo/welcome"}},Rotation:[90f,0f]}
# Reactor Fuel
summon item_display 1031 82 7 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/holo/fuel"}},Rotation:[90f,0f]}
# Reactor Controls
summon item_display 1031 82 12 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/holo/reactor"}},Rotation:[90f,0f]}
# Repair Unit
summon item_display 1032 82 -5 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/holo/repair"}},Rotation:[90f,0f]}
# Health
summon item_display 1060 77 -5 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/holo/health"}},Rotation:[90f,0f]}
# Storage
summon item_display 992 77 5 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/holo/storage"}},Rotation:[90f,0f]}
# Food
summon item_display 1013 77 -27 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/holo/food"}},Rotation:[90f,0f]}

## CHAIRS
execute positioned 1030 80 -5 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1029 80 7 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1029 80 12 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1022 80 3 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1022 80 0 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1020 80 2.0 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1011 75 -27 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 990 75 5 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1023 92 0 run tag @e[tag=decor.moon_chair,distance=..200] add arena.moon_base

## Sprinklers
summon item_display 1022 77 -43 {Tags:["arena","arena.detail","decor.sprinkler","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/sprinkler"}},Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:2,Rotation:[0.0f,0.0f]}
summon item_display 1022 80 -43 {Tags:["arena","arena.detail","decor.sprinkler","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/sprinkler"}},Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:2,Rotation:[30.0f,0.0f]}
summon item_display 1022 83 -43 {Tags:["arena","arena.detail","decor.sprinkler","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/sprinkler"}},Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:2,Rotation:[60.0f,0.0f]}
summon item_display 1022 86 -43 {Tags:["arena","arena.detail","decor.sprinkler","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/sprinkler"}},Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:2,Rotation:[90.0f,0.0f]}
summon item_display 1022 89 -43 {Tags:["arena","arena.detail","decor.sprinkler","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/sprinkler"}},Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:2,Rotation:[120.0f,0.0f]}
summon item_display 1022 92 -43 {Tags:["arena","arena.detail","decor.sprinkler","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/sprinkler"}},Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:2,Rotation:[150.0f,0.0f]}

summon item_display 1042 77 -27 {Tags:["arena","arena.detail","decor.sprinkler","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/sprinkler"}},Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:2,Rotation:[0.0f,0.0f]}
summon item_display 1042 80 -27 {Tags:["arena","arena.detail","decor.sprinkler","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/sprinkler"}},Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:2,Rotation:[30.0f,0.0f]}

summon item_display 1002 77 -27 {Tags:["arena","arena.detail","decor.sprinkler","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/sprinkler"}},Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:2,Rotation:[0.0f,0.0f]}
summon item_display 1002 80 -27 {Tags:["arena","arena.detail","decor.sprinkler","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/sprinkler"}},Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:2,Rotation:[30.0f,0.0f]}
summon item_display 1002 83 -27 {Tags:["arena","arena.detail","decor.sprinkler","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/sprinkler"}},Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:2,Rotation:[60.0f,0.0f]}
summon item_display 1002 86 -27 {Tags:["arena","arena.detail","decor.sprinkler","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/sprinkler"}},Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:2,Rotation:[90.0f,0.0f]}


return 1