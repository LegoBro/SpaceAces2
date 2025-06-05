#Resets Arena: ruins

# Makes sure the arena is loaded first
execute unless loaded 3071 99 0 run return run schedule function arena:reset/ruins 1t

## Kill all arena entities
kill @e[tag=arena.ruins]

## Skybox
summon item_display 3072.0 100 0.0 {Tags:["skybox","arena","arena.ruins"],item:{id:"minecraft:black_concrete",count:1,components:{"minecraft:item_model":"skybox/ruins"}},view_range:10f,shadow_radius:0f,shadow_strength:0f,billboard:"fixed",item_display:"ground",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[-127.9f,-127.9f,-127.9f]}}



return 1