#Resets Arena: snow_bowl

# Makes sure the arena is loaded first
execute unless loaded 16383 99 0 run return run schedule function arena:reset/snow_bowl 1t

## Kill all arena entities
kill @e[tag=arena.snow_bowl]

## Skybox
summon item_display 16382.0 100 0.0 {Tags:["skybox","arena","arena.snow_bowl"],item:{id:"minecraft:black_concrete",count:1,components:{"minecraft:item_model":"skybox/snow_bowl"}},view_range:100f,shadow_radius:0f,shadow_strength:0f,billboard:"fixed",item_display:"ground",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[-127.9f,-127.9f,-127.9f]}}


return 1