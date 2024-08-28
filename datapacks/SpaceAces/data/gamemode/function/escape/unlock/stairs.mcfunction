# Unlocks hall1
scoreboard players remove currency Numbers 25
summon minecraft:item_frame 29917 18 41 {Facing:1,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
summon minecraft:item_frame 29910 30 -32 {Facing:3,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
summon minecraft:item_frame 29906 13 34 {Facing:1,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
summon minecraft:item_frame 29989 15 -49 {Facing:1,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
tag @e[tag=stairs,tag=door] add opening
fill 29914 3 40 29914 1 44 minecraft:air replace minecraft:barrier

# Locks Mess Hall
fill 29912 15 51 29910 17 51 minecraft:barrier replace minecraft:air
summon minecraft:armor_stand 29911 15 51 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",count:1}],Rotation:[0.0f,0.0f],Tags:["door","up","mess_hall"],NoGravity:1b}
setblock 29911 15 50 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['""','{"translate":"unlock","clickEvent":{"action":"run_command","value":"/function gamemode:escape/purchase/mess_hall"}}','{"translate":"mess_hall"}','{"text":"30 Energy","color":"green","type":"text"}']}} replace

# Locks Barracks
fill 29906 15 29 29906 17 27 minecraft:barrier replace minecraft:air
summon minecraft:armor_stand 29906 15 28 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",count:1}],Rotation:[270.0f,0.0f],Tags:["door","up","barracks"],NoGravity:1b}
setblock 29907 15 28 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['""','{"translate":"unlock","clickEvent":{"action":"run_command","value":"/function gamemode:escape/purchase/barracks"}}','{"translate":"barracks"}','{"text":"35 Energy","color":"green","type":"text"}']}} replace

# Locks Tech
fill 29916 15 21 29916 17 23 minecraft:barrier replace minecraft:air
fill 29932 15 15 29930 17 15 minecraft:barrier replace minecraft:air
summon minecraft:armor_stand 29916 15 22 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",count:1}],Rotation:[270.0f,0.0f],Tags:["door","up","tech"],NoGravity:1b}
summon minecraft:armor_stand 29931 15 15 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",count:1}],Rotation:[180.0f,0.0f],Tags:["door","up","tech"],NoGravity:1b}
setblock 29915 15 22 minecraft:oak_wall_sign[facing=west]{front_text:{messages:['""','{"translate":"unlock","clickEvent":{"action":"run_command","value":"/function gamemode:escape/purchase/tech"}}','{"translate":"tech"}','{"text":"30 Energy","color":"green","type":"text"}']}} replace
setblock 29931 15 14 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['""','{"translate":"unlock","clickEvent":{"action":"run_command","value":"/function gamemode:escape/purchase/tech"}}','{"translate":"tech"}','{"text":"30 Energy","color":"green","type":"text"}']}} replace



# Locks Hallway
fill 29992 15 -45 29992 16 -44 minecraft:barrier replace minecraft:air
summon minecraft:armor_stand 29992 15 -45 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",count:1}],Rotation:[270.0f,0.0f],Tags:["door","up","hallway"],NoGravity:1b}
setblock 29991 15 -45 minecraft:oak_wall_sign[facing=west]{front_text:{messages:['""','{"translate":"unlock","clickEvent":{"action":"run_command","value":"/function gamemode:escape/purchase/hallway"}}','{"translate":"hallway"}','{"text":"50 Energy","color":"green","type":"text"}']}} replace

# Secret underground stuff
fill 29929 5 -38 29929 2 -36 minecraft:air
setblock 29929 4 -35 minecraft:air
setblock 29929 1 -37 minecraft:air
setblock 29929 5 -38 minecraft:air

return 1