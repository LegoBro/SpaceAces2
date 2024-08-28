# This opens up the hangar
scoreboard players remove currency Numbers 5
summon minecraft:item_frame 29960 4 20 {Facing:1,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
tag @e[tag=hangar,tag=door] add opening
fill 29996 4 -11 29996 1 -17 minecraft:air replace minecraft:barrier

# Locks Closet
fill 29998 1 58 29998 3 54 minecraft:barrier replace minecraft:air
summon minecraft:armor_stand 29998 1 58 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",count:1}],Rotation:[90.0f,0.0f],Tags:["door","south","closet"],NoGravity:1b}
summon minecraft:armor_stand 29998 1 54 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",count:1}],Rotation:[270.0f,0.0f],Tags:["door","north","closet"],NoGravity:1b}
setblock 29997 1 56 minecraft:oak_wall_sign[facing=west]{front_text:{messages:['""','{"translate":"unlock","clickEvent":{"action":"run_command","value":"/function gamemode:escape/purchase/closet"}}','{"translate":"closet"}','{"text":"50 Energy","color":"green","type":"text"}']}} replace

# Locks Hall1
fill 29928 1 33 29928 4 29 minecraft:barrier replace minecraft:air
summon minecraft:armor_stand 29928 1 33 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",count:1}],Rotation:[90.0f,0.0f],Tags:["door","south","hall1"],NoGravity:1b}
summon minecraft:armor_stand 29928 1 29 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",count:1}],Rotation:[270.0f,0.0f],Tags:["door","north","hall1"],NoGravity:1b}
setblock 29929 1 31 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['""','{"translate":"unlock","clickEvent":{"action":"run_command","value":"/function gamemode:escape/purchase/hall1"}}','{"translate":"hall1"}','{"text":"10 Energy","color":"green","type":"text"}']}} replace
fill 29929 6 -35 29929 1 -39 minecraft:quartz_block

tellraw @a[tag=escape] {"translate":"unlock_hangar"}

return 1