# Unlocks shaft
scoreboard players remove currency Numbers 50
summon minecraft:item_frame 30003 5 26 {Facing:0,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
summon minecraft:item_frame 29999 34 -15 {Facing:1,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
summon minecraft:item_frame 30013 6 10 {Facing:0,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
summon minecraft:item_frame 30004 32 -5 {Facing:1,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
tag @e[tag=shaft,tag=door] add opening
fill 30005 15 -1 30005 17 1 minecraft:air replace minecraft:barrier

# Seals main panel
fill 29977 35 -1 29977 39 -7 minecraft:barrier replace minecraft:air
summon minecraft:armor_stand 29977 35 -2 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",count:1}],Rotation:[90.0f,0.0f],Tags:["door","south","main_panel"],NoGravity:1b}
summon minecraft:armor_stand 29977 35 -6 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_bottle",count:1}],Rotation:[270.0f,0.0f],Tags:["door","north","main_panel"],NoGravity:1b}
setblock 29978 35 -4 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['',{translate:"unlock",click_event:{"action":"run_command",command:"/function gamemode:escape/purchase/main_panel"}}',{translate:"main_panel"},{text:"100 Energy",color:"green","type":"text"}]}} replace

# Seals med bay
fill 29989 34 11 29987 36 11 minecraft:barrier replace minecraft:air
summon minecraft:armor_stand 29988 34 11 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_bottle",count:1}],Rotation:[0.0f,0.0f],Tags:["door","up","med_bay"],NoGravity:1b}
setblock 29988 34 10 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['',{translate:"unlock",click_event:{"action":"run_command",command:"/function gamemode:escape/purchase/med_bay"}}',{translate:"med_bay"},{text:"75 Energy",color:"green","type":"text"}]}} replace

# Opens up loop-around
fill 30005 1 1 30005 3 -1 minecraft:air

return 1