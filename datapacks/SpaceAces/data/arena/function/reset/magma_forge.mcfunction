# Makes sure the arena is loaded first
execute unless loaded 13311 102 0 run return run schedule function arena:reset/moon_base 1t

## Kill all arena entities
kill @e[tag=arena.magma_forge]
## Skybox
summon item_display 13312.0 100 0.0 {Tags:["skybox","arena","arena.magma_forge"],item:{id:"minecraft:black_concrete",count:1,components:{"minecraft:item_model":"skybox/magma_forge"}},view_range:200f,shadow_radius:0f,shadow_strength:0f,billboard:"fixed",item_display:"ground",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[-127.9f,-127.9f,-127.9f]}}