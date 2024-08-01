# Unlocks shaft
scoreboard players remove currency Numbers 50
summon item_frame 30003 5 26 {Facing:0b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
summon item_frame 29999 34 -15 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
summon item_frame 30013 6 10 {Facing:0b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
summon item_frame 30004 32 -5 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
tag @e[tag=shaft,tag=door] add opening
fill 30005 15 -1 30005 17 1 air replace barrier

# Seals main panel
fill 29977 35 -1 29977 39 -7 barrier replace air
summon minecraft:armor_stand 29977 35 -2 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",Count:1b}],Rotation:[90.0f,0f],Tags:["door","south","main_panel"],NoGravity:1b}
summon minecraft:armor_stand 29977 35 -6 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",Count:1b}],Rotation:[270.0f,0f],Tags:["door","north","main_panel"],NoGravity:1b}
setblock 29978 35 -4 minecraft:oak_wall_sign[facing=east]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/main_panel"}}',Text3:'{"translate":"main_panel"}',Text4:'{"text":"100 Energy","color":"green"}'} replace

# Seals med bay
fill 29989 34 11 29987 36 11 barrier replace air
summon minecraft:armor_stand 29988 34 11 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",Count:1b}],Rotation:[0.0f,0f],Tags:["door","up","med_bay"],NoGravity:1b}
setblock 29988 34 10 minecraft:oak_wall_sign[facing=north]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/med_bay"}}',Text3:'{"translate":"med_bay"}',Text4:'{"text":"75 Energy","color":"green"}'} replace

# Opens up loop-around
fill 30005 1 1 30005 3 -1 air
