# Unlocks hall1
scoreboard players remove currency Numbers 10
summon item_frame 29902 6 32 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
summon item_frame 29901 2 50 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
tag @e[tag=hall1,tag=door] add opening
fill 29928 1 33 29928 4 29 air replace barrier

# Locks Greenery
fill 29916 1 26 29920 3 26 barrier replace air
fill 29896 1 26 29889 3 26 barrier replace air
summon minecraft:armor_stand 29920 1 26 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",Count:1b}],Rotation:[0.0f,0f],Tags:["door","east","greenery"],NoGravity:1b}
summon minecraft:armor_stand 29916 1 26 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",Count:1b}],Rotation:[180.0f,0f],Tags:["door","west","greenery"],NoGravity:1b}
summon minecraft:armor_stand 29895 1 26 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",Count:1b}],Rotation:[0.0f,0f],Tags:["door","east","greenery"],NoGravity:1b}
summon minecraft:armor_stand 29891 1 26 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",Count:1b}],Rotation:[180.0f,0f],Tags:["door","west","greenery"],NoGravity:1b}
setblock 29918 1 27 minecraft:oak_wall_sign[facing=south]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/greenery"}}',Text3:'{"translate":"greenery"}',Text4:'{"text":"15 Energy","color":"green"}'} replace
setblock 29893 1 27 minecraft:oak_wall_sign[facing=south]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/greenery"}}',Text3:'{"translate":"greenery"}',Text4:'{"text":"15 Energy","color":"green"}'} replace

# Locks Stairs
fill 29914 3 40 29914 1 44 barrier replace air
summon minecraft:armor_stand 29914 1 44 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",Count:1b}],Rotation:[90.0f,0f],Tags:["door","south","stairs"],NoGravity:1b}
summon minecraft:armor_stand 29914 1 40 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",Count:1b}],Rotation:[270.0f,0f],Tags:["door","north","stairs"],NoGravity:1b}
setblock 29913 1 42 minecraft:oak_wall_sign[facing=west]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/stairs"}}',Text3:'{"translate":"stairs"}',Text4:'{"text":"25 Energy","color":"green"}'} replace

tellraw @a[tag=escape] {"translate":"unlock_hall"}
