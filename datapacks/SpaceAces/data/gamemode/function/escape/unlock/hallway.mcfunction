# Unlocks hallway
scoreboard players remove currency Numbers 50
summon minecraft:item_frame 29997 22 -29 {Facing:0,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
summon minecraft:item_frame 29998 13 -34 {Facing:1,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
tag @e[tag=hallway,tag=door] add opening
fill 29992 15 -45 29992 16 -44 minecraft:air replace minecraft:barrier

# Locks Training
fill 29999 15 -39 29999 17 -37 minecraft:barrier replace minecraft:air
summon minecraft:armor_stand 29999 15 -38 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",count:1}],Rotation:[270.0f,0.0f],Tags:["door","up","training"],NoGravity:1b}
setblock 29998 15 -38 minecraft:oak_wall_sign[facing=west]{front_text:{messages:['""','{"translate":"unlock","clickEvent":{"action":"run_command","value":"/function gamemode:escape/purchase/training"}}','{"translate":"training"}','{"text":"50 Energy","color":"green","type":"text"}']}} replace

# Locks Shaft
fill 30005 15 -1 30005 17 1 minecraft:barrier replace minecraft:air
summon minecraft:armor_stand 30005 15 0 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",count:1}],Rotation:[270.0f,0.0f],Tags:["door","up","shaft"],NoGravity:1b}
setblock 30004 15 0 minecraft:oak_wall_sign[facing=west]{front_text:{messages:['""','{"translate":"unlock","clickEvent":{"action":"run_command","value":"/function gamemode:escape/purchase/shaft"}}','{"translate":"shaft"}','{"text":"50 Energy","color":"green","type":"text"}']}} replace

return 1