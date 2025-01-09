scoreboard players reset Mission
function help:90d92739d1c8bd13c3fc133acf334ebd20b3dc4f4d41d2005584ef55acf47dd9
function arena:clear
scoreboard players operation Map Numbers = Maps Numbers
execute if score Map Numbers matches -1 store result score Map Numbers run random value 0..4

# Determines which gamemode is to be loaded (dynamic)
execute if score Gamemode Numbers matches 0 run function gamemode:duel/load
execute if score Gamemode Numbers matches 1 run function gamemode:tdm/load
execute if score Gamemode Numbers matches 2 run function gamemode:setback/load
execute if score Gamemode Numbers matches 3 run function gamemode:killstreak/load
execute if score Gamemode Numbers matches 4 run function gamemode:escape/load
execute as @e[type=minecraft:item_frame,tag=!processed,nbt={Item:{id:"minecraft:baked_potato",count:1}}] run data merge entity @s {Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/strong_heal_inactive"},count:1},Invulnerable:1b,Tags:["strong_health","health_pack"]}
execute as @e[type=minecraft:item_frame,tag=!processed,nbt={Item:{id:"minecraft:potato",count:1}}] run data merge entity @s {Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/weak_heal_inactive"},count:1},Invulnerable:1b,Tags:["weak_health","health_pack"]}
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