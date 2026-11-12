#Resets Arena: frigate

# Makes sure the arena is loaded first
execute unless loaded 4096 99 0 run return run schedule function arena:reset/frigate 1t

## Kill all arena entities
kill @e[tag=arena.frigate]

## Skybox
summon item_display 4096.0 100 0.0 {Tags:["skybox","arena","arena.frigate"],item:{id:"minecraft:black_concrete",count:1,components:{"minecraft:item_model":"skybox/frigate"}},view_range:100f,shadow_radius:0f,shadow_strength:0f,billboard:"fixed",item_display:"ground",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[-127.9f,-127.9f,-127.9f]}}
#summon item_display 4096.0 100 0.0 {view_range:10f,shadow_radius:0f,shadow_strength:0f,billboard:"fixed",item_display:"ground",Tags:["skybox"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[-128f,-128f,-128f]},item:{id:"minecraft:black_concrete",count:1,components:{"minecraft:item_model":"skybox/frigate"}}}

summon marker 4096 102 -1 {Tags:["arena","arena.frigate","arena.frigate.center_shields"]}

return 1