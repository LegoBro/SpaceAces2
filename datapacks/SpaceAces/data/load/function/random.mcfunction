#Entities used for RNG
execute unless entity @e[type=minecraft:area_effect_cloud,tag=move_up] run summon minecraft:area_effect_cloud 8 0 8 {Particle:{type:"minecraft:take"},Duration:630720000,Tags:["move_up","positioner"]}
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=move_up] i 1
execute unless entity @e[type=minecraft:area_effect_cloud,tag=move_down] run summon minecraft:area_effect_cloud 8 0 8 {Particle:{type:"minecraft:take"},Duration:630720000,Tags:["move_down","positioner"]}
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=move_down] i 2
execute unless entity @e[type=minecraft:area_effect_cloud,tag=move_left] run summon minecraft:area_effect_cloud 8 0 8 {Particle:{type:"minecraft:take"},Duration:630720000,Tags:["move_left","positioner"]}
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=move_left] i 3
execute unless entity @e[type=minecraft:area_effect_cloud,tag=move_right] run summon minecraft:area_effect_cloud 8 0 8 {Particle:{type:"minecraft:take"},Duration:630720000,Tags:["move_right","positioner"]}
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=move_right] i 4
execute unless entity @e[type=minecraft:area_effect_cloud,tag=rng_one] run summon minecraft:area_effect_cloud 8 0 8 {Particle:{type:"minecraft:take"},Duration:630720000,Tags:["rng_one","rng_addable"]}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=rng_two] run summon minecraft:area_effect_cloud 8 0 8 {Particle:{type:"minecraft:take"},Duration:630720000,Tags:["rng_two","rng_addable"]}
return 1