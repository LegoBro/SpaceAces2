
# New things
execute positioned 29960 4 10 run kill @e[tag=door,distance=..1000]
execute positioned 29960 4 10 run kill @e[tag=spawner,distance=..1000]
execute positioned 29960 4 10 run kill @e[tag=bot,distance=..1000]
execute positioned 29960 4 10 run kill @e[tag=terminal,distance=..1000]
execute positioned 29960 4 10 run kill @e[type=armor_stand,tag=powerup,distance=..1000]
execute positioned 29960 4 10 run kill @e[type=slime,distance=..1000]
execute positioned 29960 4 10 run kill @e[type=armor_stand,tag=poison_trail,distance=..1000]
summon minecraft:area_effect_cloud 30004 2 56 {CustomNameVisible:1b,CustomName:'{"translate":"terminal_0"}',Duration:2000000000,Tags:["terminal","active"]}
summon minecraft:area_effect_cloud 29901 16 47 {CustomNameVisible:1b,CustomName:'{"translate":"terminal_0"}',Duration:2000000000,Tags:["terminal","active"]}
summon minecraft:area_effect_cloud 29911 16 -36 {CustomNameVisible:1b,CustomName:'{"translate":"terminal_0"}',Duration:2000000000,Tags:["terminal","active"]}
summon minecraft:area_effect_cloud 29924 40 -4 {CustomNameVisible:1b,CustomName:'{"translate":"terminal_0"}',Duration:2000000000,Tags:["terminal","active"]}
summon minecraft:area_effect_cloud 30008 2 45 {CustomNameVisible:1b,CustomName:'{"translate":"terminal_0"}',Duration:2000000000,Tags:["terminal","active"]}

# Unlocks entry
summon item_frame 29999 9 -35 {Facing:0b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}

# Locks Lab
fill 30004 1 -17 30004 4 -11 barrier replace air
fill 29999 1 -38 30001 3 -38 barrier replace air
summon minecraft:armor_stand 30004 1 -12 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",Count:1b}],Rotation:[90.0f,0f],Tags:["door","south","lab"],NoGravity:1b}
summon minecraft:armor_stand 30004 1 -16 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",Count:1b}],Rotation:[270.0f,0f],Tags:["door","north","lab"],NoGravity:1b}
summon minecraft:armor_stand 30000 1 -38 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",Count:1b}],Rotation:[0.0f,0f],Tags:["door","up","lab"],NoGravity:1b}
setblock 30003 1 -14 minecraft:oak_wall_sign[facing=west]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/lab"}}',Text3:'{"translate":"lab"}',Text4:'{"text":"3 Energy","color":"green"}'} replace
setblock 30000 1 -37 minecraft:oak_wall_sign[facing=south]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/lab"}}',Text3:'{"translate":"lab"}',Text4:'{"text":"3 Energy","color":"green"}'} replace

# Locks Hangar
fill 29996 4 -11 29996 1 -17 barrier replace air
summon minecraft:armor_stand 29996 1 -12 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",Count:1b}],Rotation:[90.0f,0f],Tags:["door","south","hangar"],NoGravity:1b}
summon minecraft:armor_stand 29996 1 -16 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",Count:1b}],Rotation:[270.0f,0f],Tags:["door","north","hangar"],NoGravity:1b}
setblock 29997 1 -14 minecraft:oak_wall_sign[facing=east]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/hangar"}}',Text3:'{"translate":"hangar"}',Text4:'{"text":"5 Energy","color":"green"}'} replace

# Cleans up holes in side of tech
fill 29934 14 15 29929 14 -6 quartz_block
fill 29934 15 -7 29934 25 13 black_stained_glass
fill 29935 13 3 29935 27 3 gray_concrete
fill 29934 15 2 29934 25 4 minecraft:quartz_block
fill 29936 12 3 29936 27 3 red_sandstone_wall
fill 29928 15 13 29928 15 -8 minecraft:white_stained_glass_pane[north=true,south=true]
fill 29934 26 -8 29934 27 14 quartz_block
fill 29961 15 -42 29964 25 -42 black_stained_glass
fill 29970 25 -42 29967 15 -42 black_stained_glass
fill 29959 15 -42 29972 27 -42 quartz_block replace air

# Kills and re-summons win condition display
kill @e[type=armor_stand,tag=ship_anchor]
summon minecraft:armor_stand 29948 7 5 {NoGravity:1b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["ship_anchor"],Rotation:[-90.0f,0.0f]}

# Fills up loop-around
fill 30005 1 1 30005 3 -1 red_sandstone
