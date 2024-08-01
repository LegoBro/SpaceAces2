# Unlocks hall1
scoreboard players remove currency Numbers 25
summon item_frame 29917 18 41 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
summon item_frame 29910 30 -32 {Facing:3b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
summon item_frame 29906 13 34 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
summon item_frame 29989 15 -49 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
tag @e[tag=stairs,tag=door] add opening
fill 29914 3 40 29914 1 44 air replace barrier

# Locks Mess Hall
fill 29912 15 51 29910 17 51 barrier replace air
summon minecraft:armor_stand 29911 15 51 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",Count:1b}],Rotation:[0.0f,0f],Tags:["door","up","mess_hall"],NoGravity:1b}
setblock 29911 15 50 minecraft:oak_wall_sign[facing=north]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/mess_hall"}}',Text3:'{"translate":"mess_hall"}',Text4:'{"text":"30 Energy","color":"green"}'} replace

# Locks Barracks
fill 29906 15 29 29906 17 27 barrier replace air
summon minecraft:armor_stand 29906 15 28 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",Count:1b}],Rotation:[270.0f,0f],Tags:["door","up","barracks"],NoGravity:1b}
setblock 29907 15 28 minecraft:oak_wall_sign[facing=east]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/barracks"}}',Text3:'{"translate":"barracks"}',Text4:'{"text":"35 Energy","color":"green"}'} replace

# Locks Tech
fill 29916 15 21 29916 17 23 barrier replace air
fill 29932 15 15 29930 17 15 barrier replace air
summon minecraft:armor_stand 29916 15 22 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",Count:1b}],Rotation:[270.0f,0f],Tags:["door","up","tech"],NoGravity:1b}
summon minecraft:armor_stand 29931 15 15 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",Count:1b}],Rotation:[180.0f,0f],Tags:["door","up","tech"],NoGravity:1b}
setblock 29915 15 22 minecraft:oak_wall_sign[facing=west]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/tech"}}',Text3:'{"translate":"tech"}',Text4:'{"text":"30 Energy","color":"green"}'} replace
setblock 29931 15 14 minecraft:oak_wall_sign[facing=north]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/tech"}}',Text3:'{"translate":"tech"}',Text4:'{"text":"30 Energy","color":"green"}'} replace



# Locks Hallway
fill 29992 15 -45 29992 16 -44 barrier replace air
summon minecraft:armor_stand 29992 15 -45 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",Count:1b}],Rotation:[270.0f,0f],Tags:["door","up","hallway"],NoGravity:1b}
setblock 29991 15 -45 minecraft:oak_wall_sign[facing=west]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/hallway"}}',Text3:'{"translate":"hallway"}',Text4:'{"text":"50 Energy","color":"green"}'} replace

# Secret underground stuff
fill 29929 5 -38 29929 2 -36 air
setblock 29929 4 -35 air
setblock 29929 1 -37 air
setblock 29929 5 -38 air
