# Unlocks mess hall
scoreboard players remove currency Numbers 30
summon item_frame 29894 22 62 {Facing:0b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
tag @e[tag=mess_hall,tag=door] add opening
fill 29912 15 51 29910 17 51 air replace barrier

# Might Lock tech
execute if block 29916 15 22 barrier run fill 29928 15 42 29930 17 42 barrier replace air
execute if block 29916 15 22 barrier run summon minecraft:armor_stand 29929 15 42 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",Count:1b}],Rotation:[0.0f,0f],Tags:["door","up","tech"],NoGravity:1b}
execute if block 29916 15 22 barrier run setblock 29929 15 43 minecraft:oak_wall_sign[facing=south]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/tech"}}',Text3:'{"translate":"tech"}',Text4:'{"text":"30 Energy","color":"green"}'} replace

# Might unlock Mess hall
execute if block 29916 15 22 air run fill 29928 15 42 29930 17 42 air replace barrier
