# Unlocks hall1
scoreboard players remove currency Numbers 30
summon item_frame 29964 23 -46 {Facing:3b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
tag @e[tag=tech,tag=door] add opening
fill 29916 15 21 29916 17 23 air replace barrier
fill 29932 15 15 29930 17 15 air replace barrier

# Might Lock Mess Hall
execute if block 29911 15 51 barrier run fill 29928 15 42 29930 17 42 barrier replace air
execute if block 29911 15 51 barrier run summon minecraft:armor_stand 29929 15 42 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",Count:1b}],Rotation:[0.0f,0f],Tags:["door","up","mess_hall"],NoGravity:1b}
execute if block 29911 15 51 barrier run setblock 29929 15 41 minecraft:oak_wall_sign[facing=north]{Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/mess_hall"}}',Text3:'{"translate":"mess_hall"}',Text4:'{"text":"30 Energy","color":"green"}'} replace

# Might unlock Mess hall
execute if block 29911 15 51 air run fill 29928 15 42 29930 17 42 air replace barrier

# Explodes a hole into the side of Tech
summon tnt 29932 20 7
summon tnt 29932 21 -1
summon tnt 29966 20 -39
