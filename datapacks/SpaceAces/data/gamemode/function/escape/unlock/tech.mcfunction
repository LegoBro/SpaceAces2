# Unlocks hall1
scoreboard players remove currency Numbers 30
summon minecraft:item_frame 29964 23 -46 {Facing:3,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
tag @e[tag=tech,tag=door] add opening
fill 29916 15 21 29916 17 23 minecraft:air replace minecraft:barrier
fill 29932 15 15 29930 17 15 minecraft:air replace minecraft:barrier

# Might Lock Mess Hall
execute if block 29911 15 51 minecraft:barrier run fill 29928 15 42 29930 17 42 minecraft:barrier replace minecraft:air
execute if block 29911 15 51 minecraft:barrier run summon minecraft:armor_stand 29929 15 42 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",count:1}],Rotation:[0.0f,0.0f],Tags:["door","up","mess_hall"],NoGravity:1b}
execute if block 29911 15 51 minecraft:barrier run setblock 29929 15 41 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['',{translate:"unlock",click_event:{"action":"run_command",command:"/function gamemode:escape/purchase/mess_hall"}}',{translate:"mess_hall"},{text:"30 Energy",color:"green","type":"text"}]}} replace

# Might unlock Mess hall
execute if block 29911 15 51 minecraft:air run fill 29928 15 42 29930 17 42 minecraft:air replace minecraft:barrier

# Explodes a hole into the side of Tech
summon minecraft:tnt 29932 20 7
summon minecraft:tnt 29932 21 -1
summon minecraft:tnt 29966 20 -39

return 1