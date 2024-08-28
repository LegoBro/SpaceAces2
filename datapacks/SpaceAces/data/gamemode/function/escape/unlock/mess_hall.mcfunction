# Unlocks mess hall
scoreboard players remove currency Numbers 30
summon minecraft:item_frame 29894 22 62 {Facing:0,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
tag @e[tag=mess_hall,tag=door] add opening
fill 29912 15 51 29910 17 51 minecraft:air replace minecraft:barrier

# Might Lock tech
execute if block 29916 15 22 minecraft:barrier run fill 29928 15 42 29930 17 42 minecraft:barrier replace minecraft:air
execute if block 29916 15 22 minecraft:barrier run summon minecraft:armor_stand 29929 15 42 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",count:1}],Rotation:[0.0f,0.0f],Tags:["door","up","tech"],NoGravity:1b}
execute if block 29916 15 22 minecraft:barrier run setblock 29929 15 43 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['""','{"translate":"unlock","clickEvent":{"action":"run_command","value":"/function gamemode:escape/purchase/tech"}}','{"translate":"tech"}','{"text":"30 Energy","color":"green","type":"text"}']}} replace

# Might unlock Mess hall
execute if block 29916 15 22 minecraft:air run fill 29928 15 42 29930 17 42 minecraft:air replace minecraft:barrier

return 1