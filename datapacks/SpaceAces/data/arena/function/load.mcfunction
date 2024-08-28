scoreboard players reset Mission
function help:90d92739d1c8bd13c3fc133acf334ebd20b3dc4f4d41d2005584ef55acf47dd9
kill @e[type=!minecraft:player,x=20031,y=0,z=-65,dx=260,dy=65,dz=260]
fill 20032 0 -64 20159 0 63 minecraft:barrier
fill 20032 1 -64 20159 1 63 minecraft:barrier
fill 20032 2 -64 20159 2 63 minecraft:barrier
fill 20032 3 -64 20159 3 63 minecraft:barrier
fill 20032 4 -64 20159 4 63 minecraft:barrier
fill 20032 5 -64 20159 5 63 minecraft:barrier
fill 20032 6 -64 20159 6 63 minecraft:barrier
fill 20032 7 -64 20159 7 63 minecraft:barrier
fill 20032 8 -64 20159 8 63 minecraft:barrier
fill 20032 9 -64 20159 9 63 minecraft:barrier
fill 20032 10 -64 20159 10 63 minecraft:barrier
fill 20032 11 -64 20159 11 63 minecraft:barrier
fill 20032 12 -64 20159 12 63 minecraft:barrier
fill 20032 13 -64 20159 13 63 minecraft:barrier
fill 20032 14 -64 20159 14 63 minecraft:barrier
fill 20032 15 -64 20159 15 63 minecraft:barrier
fill 20032 16 -64 20159 16 63 minecraft:barrier
fill 20032 17 -64 20159 17 63 minecraft:barrier
fill 20032 18 -64 20159 18 63 minecraft:barrier
fill 20032 19 -64 20159 19 63 minecraft:barrier
fill 20032 20 -64 20159 20 63 minecraft:barrier
fill 20032 21 -64 20159 21 63 minecraft:barrier
fill 20032 22 -64 20159 22 63 minecraft:barrier
fill 20032 23 -64 20159 23 63 minecraft:barrier
fill 20032 24 -64 20159 24 63 minecraft:barrier
fill 20032 25 -64 20159 25 63 minecraft:barrier
fill 20032 26 -64 20159 26 63 minecraft:barrier
fill 20032 27 -64 20159 27 63 minecraft:barrier
fill 20032 28 -64 20159 28 63 minecraft:barrier
fill 20032 29 -64 20159 29 63 minecraft:barrier
fill 20032 30 -64 20159 30 63 minecraft:barrier
fill 20032 31 -64 20159 31 63 minecraft:barrier
fill 20032 32 -64 20159 32 63 minecraft:barrier
fill 20032 33 -64 20159 33 63 minecraft:barrier
fill 20032 34 -64 20159 34 63 minecraft:barrier
fill 20032 35 -64 20159 35 63 minecraft:barrier
fill 20032 36 -64 20159 36 63 minecraft:barrier
fill 20032 37 -64 20159 37 63 minecraft:barrier
fill 20032 38 -64 20159 38 63 minecraft:barrier
fill 20032 39 -64 20159 39 63 minecraft:barrier
fill 20032 40 -64 20159 40 63 minecraft:barrier
fill 20032 41 -64 20159 41 63 minecraft:barrier
fill 20032 42 -64 20159 42 63 minecraft:barrier
fill 20032 43 -64 20159 43 63 minecraft:barrier
fill 20032 44 -64 20159 44 63 minecraft:barrier
fill 20032 45 -64 20159 45 63 minecraft:barrier
fill 20032 46 -64 20159 46 63 minecraft:barrier
fill 20032 47 -64 20159 47 63 minecraft:barrier
fill 20032 48 -64 20159 48 63 minecraft:barrier
fill 20032 49 -64 20159 49 63 minecraft:barrier
fill 20032 50 -64 20159 50 63 minecraft:barrier
fill 20032 51 -64 20159 51 63 minecraft:barrier
fill 20032 52 -64 20159 52 63 minecraft:barrier
fill 20032 53 -64 20159 53 63 minecraft:barrier
fill 20032 54 -64 20159 54 63 minecraft:barrier
fill 20032 55 -64 20159 55 63 minecraft:barrier
fill 20032 56 -64 20159 56 63 minecraft:barrier
fill 20032 57 -64 20159 57 63 minecraft:barrier
fill 20032 58 -64 20159 58 63 minecraft:barrier
fill 20032 59 -64 20159 59 63 minecraft:barrier
fill 20032 60 -64 20159 60 63 minecraft:barrier
fill 20032 61 -64 20159 61 63 minecraft:barrier
fill 20032 62 -64 20159 62 63 minecraft:barrier
fill 20032 63 -64 20159 63 63 minecraft:barrier
scoreboard players operation Map Numbers = Maps Numbers
execute if score Map Numbers matches -1 run function scoreboard:rand_int
execute if score Map Numbers matches -1 run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=rng_one,limit=1] Numbers %= 5 Numbers
execute if score Map Numbers matches -1 run scoreboard players operation Map Numbers = @e[type=minecraft:area_effect_cloud,tag=rng_one,limit=1] Numbers

# Determines which gamemode is to be loaded (dynamic)
execute if score Gamemode Numbers matches 0 run function gamemode:duel/load
execute if score Gamemode Numbers matches 1 run function gamemode:tdm/load
execute if score Gamemode Numbers matches 2 run function gamemode:setback/load
execute if score Gamemode Numbers matches 3 run function gamemode:killstreak/load
execute if score Gamemode Numbers matches 4 run function gamemode:escape/load
execute as @e[type=minecraft:item_frame,tag=!processed,nbt={Item:{id:"minecraft:baked_potato",count:1}}] run data merge entity @s {Item:{id:"minecraft:baked_potato",components:{"minecraft:custom_model_data":11000002},count:1},Invulnerable:1b,Tags:["strong_health","health_pack"]}
execute as @e[type=minecraft:item_frame,tag=!processed,nbt={Item:{id:"minecraft:potato",count:1}}] run data merge entity @s {Item:{id:"minecraft:baked_potato",components:{"minecraft:custom_model_data":11000003},count:1},Invulnerable:1b,Tags:["weak_health","health_pack"]}
execute as @e[type=minecraft:item_frame,tag=!processed,nbt={Item:{id:"minecraft:lapis_lazuli",count:1}}] run data merge entity @s {Item:{id:"minecraft:lapis_lazuli",count:1},Invulnerable:1b,Tags:["blue_spawn"]}
execute as @e[type=minecraft:item_frame,tag=!processed,nbt={Item:{id:"minecraft:red_dye",count:1}}] run data merge entity @s {Item:{id:"minecraft:red_dye",count:1},Invulnerable:1b,Tags:["red_spawn"]}
execute as @e[type=minecraft:item_frame,tag=!processed,nbt={Item:{id:"minecraft:bone_meal",count:1}}] run data merge entity @s {Item:{id:"minecraft:bone_meal",count:1},Invulnerable:1b,Tags:["general_spawn"]}
execute as @e[type=minecraft:item_frame,tag=!processed,nbt={Item:{id:"minecraft:black_dye",count:1}}] run data merge entity @s {Item:{id:"minecraft:black_dye",count:1},Invulnerable:1b,Tags:["capture_point"]}
execute as @e[type=minecraft:item_frame,tag=!processed,nbt={Item:{id:"minecraft:pink_dye",count:1}}] run data merge entity @s {Item:{id:"minecraft:pink_dye",count:1},Invulnerable:1b,Tags:["forward_red_spawn"]}
execute as @e[type=minecraft:item_frame,tag=!processed,nbt={Item:{id:"minecraft:magenta_dye",count:1}}] run data merge entity @s {Item:{id:"minecraft:magenta_dye",count:1},Invulnerable:1b,Tags:["middle_red_spawn"]}
execute as @e[type=minecraft:item_frame,tag=!processed,nbt={Item:{id:"minecraft:cyan_dye",count:1}}] run data merge entity @s {Item:{id:"minecraft:cyan_dye",count:1},Invulnerable:1b,Tags:["middle_blue_spawn"]}
execute as @e[type=minecraft:item_frame,tag=!processed,nbt={Item:{id:"minecraft:light_blue_dye",count:1}}] run data merge entity @s {Item:{id:"minecraft:light_blue_dye",count:1},Invulnerable:1b,Tags:["forward_blue_spawn"]}
tag @e[type=minecraft:item_frame,tag=!processed] add processed
tag @a[tag=awaiting] add in_game
tag @a[tag=awaiting] remove awaiting
return 1