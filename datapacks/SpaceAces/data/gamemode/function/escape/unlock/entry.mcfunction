
# New things
execute positioned 29960 4 10 run kill @e[distance=..1000,tag=door]
execute positioned 29960 4 10 run kill @e[distance=..1000,tag=spawner]
execute positioned 29960 4 10 run kill @e[distance=..1000,tag=bot]
execute positioned 29960 4 10 run kill @e[distance=..1000,tag=terminal]
execute positioned 29960 4 10 run kill @e[type=minecraft:armor_stand,distance=..1000,tag=powerup]
execute positioned 29960 4 10 run kill @e[type=minecraft:slime,distance=..1000]
execute positioned 29960 4 10 run kill @e[type=minecraft:armor_stand,distance=..1000,tag=poison_trail]
summon minecraft:area_effect_cloud 30004 2 56 {CustomNameVisible:1b,CustomName:{translate:"terminal_0"},Duration:2000000000,Tags:["terminal","active"]}
summon minecraft:area_effect_cloud 29901 16 47 {CustomNameVisible:1b,CustomName:{translate:"terminal_0"},Duration:2000000000,Tags:["terminal","active"]}
summon minecraft:area_effect_cloud 29911 16 -36 {CustomNameVisible:1b,CustomName:{translate:"terminal_0"},Duration:2000000000,Tags:["terminal","active"]}
summon minecraft:area_effect_cloud 29924 40 -4 {CustomNameVisible:1b,CustomName:{translate:"terminal_0"},Duration:2000000000,Tags:["terminal","active"]}
summon minecraft:area_effect_cloud 30008 2 45 {CustomNameVisible:1b,CustomName:{translate:"terminal_0"},Duration:2000000000,Tags:["terminal","active"]}

# Unlocks entry
summon minecraft:item_frame 29999 9 -35 {Facing:0,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}

# Locks Lab
fill 30004 1 -17 30004 4 -11 minecraft:barrier replace minecraft:air
fill 29999 1 -38 30001 3 -38 minecraft:barrier replace minecraft:air
summon minecraft:armor_stand 30004 1 -12 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",count:1}],Rotation:[90.0f,0.0f],Tags:["door","south","lab"],NoGravity:1b}
summon minecraft:armor_stand 30004 1 -16 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",count:1}],Rotation:[270.0f,0.0f],Tags:["door","north","lab"],NoGravity:1b}
summon minecraft:armor_stand 30000 1 -38 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",count:1}],Rotation:[0.0f,0.0f],Tags:["door","up","lab"],NoGravity:1b}
setblock 30003 1 -14 minecraft:oak_wall_sign[facing=west]{front_text:{messages:['',{translate:"unlock",click_event:{"action":"run_command",command:"/function gamemode:escape/purchase/lab"}}',{translate:"lab"},{text:"3 Energy",color:"green","type":"text"}]}} replace
setblock 30000 1 -37 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['',{translate:"unlock",click_event:{"action":"run_command",command:"/function gamemode:escape/purchase/lab"}}',{translate:"lab"},{text:"3 Energy",color:"green","type":"text"}]}} replace

# Locks Hangar
fill 29996 4 -11 29996 1 -17 minecraft:barrier replace minecraft:air
summon minecraft:armor_stand 29996 1 -12 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",count:1}],Rotation:[90.0f,0.0f],Tags:["door","south","hangar"],NoGravity:1b}
summon minecraft:armor_stand 29996 1 -16 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",count:1}],Rotation:[270.0f,0.0f],Tags:["door","north","hangar"],NoGravity:1b}
setblock 29997 1 -14 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['',{translate:"unlock",click_event:{"action":"run_command",command:"/function gamemode:escape/purchase/hangar"}}',{translate:"hangar"},{text:"5 Energy",color:"green","type":"text"}]}} replace

# Cleans up holes in side of tech
fill 29934 14 15 29929 14 -6 minecraft:quartz_block
fill 29934 15 -7 29934 25 13 minecraft:black_stained_glass
fill 29935 13 3 29935 27 3 minecraft:gray_concrete
fill 29934 15 2 29934 25 4 minecraft:quartz_block
fill 29936 12 3 29936 27 3 minecraft:red_sandstone_wall
fill 29928 15 13 29928 15 -8 minecraft:white_stained_glass_pane[north=true,south=true]
fill 29934 26 -8 29934 27 14 minecraft:quartz_block
fill 29961 15 -42 29964 25 -42 minecraft:black_stained_glass
fill 29970 25 -42 29967 15 -42 minecraft:black_stained_glass
fill 29959 15 -42 29972 27 -42 minecraft:quartz_block replace minecraft:air

# Kills and re-summons win condition display
kill @e[type=minecraft:armor_stand,tag=ship_anchor]
summon minecraft:armor_stand 29948 7 5 {NoGravity:1b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["ship_anchor"],Rotation:[-90.0f,0.0f]}

# Fills up loop-around
fill 30005 1 1 30005 3 -1 minecraft:red_sandstone

return 1