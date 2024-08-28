#Generates a random integer between 0 and 1023 (can be upgraded as high as 2,147,483,647)
scoreboard players reset @e[type=minecraft:area_effect_cloud,tag=rng_addable]
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=rng_addable,sort=random,limit=1] Numbers 1
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=rng_addable,sort=random,limit=1] Numbers 2
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=rng_addable,sort=random,limit=1] Numbers 4
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=rng_addable,sort=random,limit=1] Numbers 8
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=rng_addable,sort=random,limit=1] Numbers 16
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=rng_addable,sort=random,limit=1] Numbers 32
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=rng_addable,sort=random,limit=1] Numbers 64
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=rng_addable,sort=random,limit=1] Numbers 128
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=rng_addable,sort=random,limit=1] Numbers 256
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=rng_addable,sort=random,limit=1] Numbers 512

return 1