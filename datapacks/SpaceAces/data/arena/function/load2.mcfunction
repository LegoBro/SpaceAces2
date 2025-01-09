## Second half of load

execute as @e[type=marker,tag=strong_health_pack] run summon item_frame ~ ~ ~ {Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/strong_heal_inactive"},count:1},Invulnerable:1b,Tags:["strong_health","health_pack"]}
execute as @e[type=marker,tag=weak_health_pack] run summon item_frame ~ ~ ~ {Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/weak_heal_inactive"},count:1},Invulnerable:1b,Tags:["weak_health","health_pack"]}
execute as @e[type=marker,tag=blue_spawn_point] run summon item_frame ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",count:1},Invulnerable:1b,Tags:["blue_spawn"]}
execute as @e[type=marker,tag=red_spawn_point] run summon item_frame ~ ~ ~ {Item:{id:"minecraft:red_dye",count:1},Invulnerable:1b,Tags:["red_spawn"]}
execute as @e[type=marker,tag=general_spawn_point] run summon item_frame ~ ~ ~ {Item:{id:"minecraft:bone_meal",count:1},Invulnerable:1b,Tags:["general_spawn"]}
#execute as @e[type=marker,tag=general_spawn_point] run summon item_frame ~ ~ ~ {Item:{id:"minecraft:black_dye",count:1},Invulnerable:1b,Tags:["capture_point"]}
#execute as @e[type=marker,tag=general_spawn_point] run summon item_frame ~ ~ ~ {Item:{id:"minecraft:pink_dye",count:1},Invulnerable:1b,Tags:["forward_red_spawn"]}
#execute as @e[type=marker,tag=general_spawn_point] run summon item_frame ~ ~ ~ {Item:{id:"minecraft:magenta_dye",count:1},Invulnerable:1b,Tags:["middle_red_spawn"]}
#execute as @e[type=marker,tag=general_spawn_point] run summon item_frame ~ ~ ~ {Item:{id:"minecraft:cyan_dye",count:1},Invulnerable:1b,Tags:["middle_blue_spawn"]}
#execute as @e[type=marker,tag=general_spawn_point] run summon item_frame ~ ~ ~ {Item:{id:"minecraft:light_blue_dye",count:1},Invulnerable:1b,Tags:["forward_blue_spawn"]}
tag @e[type=marker,tag=!processed] add processed
tag @a[tag=awaiting] add in_game
tag @a[tag=awaiting] remove awaiting
return 1