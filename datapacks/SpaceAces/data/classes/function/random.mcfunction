function scoreboard:rand_int
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=rng_one] Numbers %= 15 Numbers
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=rng_one] Numbers += 1 Numbers
scoreboard players operation @s Class = @e[type=minecraft:area_effect_cloud,tag=rng_one] Numbers
function classes:reselect

return 1