#Resets Arena: moon_base

# Makes sure the arena is loaded first
execute unless loaded 1023 92 0 run return run schedule function arena:reset/moon_base 1t

## Kill all arena entities
kill @e[tag=arena.moon_base]

## Skybox
summon item_display 1024.0 100 0.0 {Tags:["skybox","arena","arena.moon_base"],item:{id:"minecraft:black_concrete",count:1,components:{"minecraft:item_model":"skybox/moon_base"}},view_range:10f,shadow_radius:0f,shadow_strength:0f,billboard:"fixed",item_display:"ground",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[-127.9f,-127.9f,-127.9f]}}

## Terminal Holograms
# Large Computer Screen
summon item_display 1018 83 2.0 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/welcome_hologram"}},Rotation:[90f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}

summon item_display 1054 77 1 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/welcome_hologram"}},Rotation:[90f,0f]}
summon item_display 1031 82 7 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/welcome_hologram"}},Rotation:[90f,0f]}
summon item_display 1031 82 12 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/welcome_hologram"}},Rotation:[90f,0f]}
summon item_display 1032 82 -5 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/welcome_hologram"}},Rotation:[90f,0f]}
# Health
summon item_display 1060 77 -5 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/welcome_hologram"}},Rotation:[90f,0f]}

summon item_display 992 77 5 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/welcome_hologram"}},Rotation:[90f,0f]}
# Food
summon item_display 1013 77 -27 {Tags:["arena","arena.detail","decor.screen","arena.moon_base"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/moon_base/welcome_hologram"}},Rotation:[90f,0f]}

## CHAIRS
execute positioned 1030 80 -5 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1029 80 7 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1029 80 12 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1022 80 4 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1022 80 -1 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1020 81.0 1 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 1011 75 -27 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair
execute positioned 990 75 5 facing entity @n[tag=decor.screen] feet rotated ~ 0 run function decor:place/moon_chair

return 1