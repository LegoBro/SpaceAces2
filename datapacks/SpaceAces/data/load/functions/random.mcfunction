#Entities used for RNG
execute unless entity @e[tag=move_up,type=area_effect_cloud] run summon area_effect_cloud 8 0 8 {Particle:"take",Duration:630720000,Tags:["move_up","positioner"]}
scoreboard players set @e[tag=move_up,type=area_effect_cloud] i 1
execute unless entity @e[tag=move_down,type=area_effect_cloud] run summon area_effect_cloud 8 0 8 {Particle:"take",Duration:630720000,Tags:["move_down","positioner"]}
scoreboard players set @e[tag=move_down,type=area_effect_cloud] i 2
execute unless entity @e[tag=move_left,type=area_effect_cloud] run summon area_effect_cloud 8 0 8 {Particle:"take",Duration:630720000,Tags:["move_left","positioner"]}
scoreboard players set @e[tag=move_left,type=area_effect_cloud] i 3
execute unless entity @e[tag=move_right,type=area_effect_cloud] run summon area_effect_cloud 8 0 8 {Particle:"take",Duration:630720000,Tags:["move_right","positioner"]}
scoreboard players set @e[tag=move_right,type=area_effect_cloud] i 4
execute unless entity @e[tag=rng_one,type=area_effect_cloud] run summon area_effect_cloud 8 0 8 {Particle:"take",Duration:630720000,Tags:["rng_one","rng_addable"]}
execute unless entity @e[tag=rng_two,type=area_effect_cloud] run summon area_effect_cloud 8 0 8 {Particle:"take",Duration:630720000,Tags:["rng_two","rng_addable"]}