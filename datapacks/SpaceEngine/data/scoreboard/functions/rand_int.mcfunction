#Generates a random integer between 0 and 1023 (can be upgraded as high as 2,147,483,647)
scoreboard players reset @e[tag=rng_addable,type=area_effect_cloud]
scoreboard players add @e[tag=rng_addable,limit=1,sort=random,type=area_effect_cloud] Numbers 1
scoreboard players add @e[tag=rng_addable,limit=1,sort=random,type=area_effect_cloud] Numbers 2
scoreboard players add @e[tag=rng_addable,limit=1,sort=random,type=area_effect_cloud] Numbers 4
scoreboard players add @e[tag=rng_addable,limit=1,sort=random,type=area_effect_cloud] Numbers 8
scoreboard players add @e[tag=rng_addable,limit=1,sort=random,type=area_effect_cloud] Numbers 16
scoreboard players add @e[tag=rng_addable,limit=1,sort=random,type=area_effect_cloud] Numbers 32
scoreboard players add @e[tag=rng_addable,limit=1,sort=random,type=area_effect_cloud] Numbers 64
scoreboard players add @e[tag=rng_addable,limit=1,sort=random,type=area_effect_cloud] Numbers 128
scoreboard players add @e[tag=rng_addable,limit=1,sort=random,type=area_effect_cloud] Numbers 256
scoreboard players add @e[tag=rng_addable,limit=1,sort=random,type=area_effect_cloud] Numbers 512
