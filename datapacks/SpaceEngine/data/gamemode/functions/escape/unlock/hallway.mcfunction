# Unlocks hallway
scoreboard players remove currency Numbers 50
summon item_frame 29997 22 -29 {Facing:0b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
summon item_frame 29998 13 -34 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
tag @e[tag=hallway,tag=door] add opening
fill 29992 15 -45 29992 16 -44 air replace minecraft:barrier

# Locks Training
fill 29999 15 -39 29999 17 -37 barrier replace air
summon minecraft:armor_stand 29999 15 -38 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",Count:1b}],Rotation:[270.0f,0f],Tags:["door","up","training"],NoGravity:1b}
setblock 29998 15 -38 minecraft:oak_wall_sign[facing=west]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/training"}}',Text3:'{"translate":"training"}',Text4:'{"text":"50 Energy","color":"green"}'} replace

# Locks Shaft
fill 30005 15 -1 30005 17 1 barrier replace air
summon minecraft:armor_stand 30005 15 0 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",Count:1b}],Rotation:[270.0f,0f],Tags:["door","up","shaft"],NoGravity:1b}
setblock 30004 15 0 minecraft:oak_wall_sign[facing=west]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/shaft"}}',Text3:'{"translate":"shaft"}',Text4:'{"text":"50 Energy","color":"green"}'} replace
