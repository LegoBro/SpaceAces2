execute if entity @e[type=minecraft:villager,tag=randomClass,tag=pilot] run function class:random
function help:b1b7b32c383cf7c8ae900b807469e3bc552abb04df1f75545c9693e4e338107d
effect give @s minecraft:saturation 10 100 true
function help:24fc4862c0a08d018da73012ad7c037ae4e8cef1fbd1cbcffc1c0576303046d2
effect give @s minecraft:resistance 5 4 true
scoreboard players set @s reload 500000
scoreboard players set @s totalShots 0
scoreboard players set @s ability.1.cooldown 0
scoreboard players set @s ability.2.cooldown 0
scoreboard players operation @s health = @s maxHealth
scoreboard players add @s healing 1000
playsound minecraft:entity.player.death master @s ~ ~ ~ 1 0 1
scoreboard players reset @s invis
scoreboard players reset @s invulnerable
scoreboard players reset @s resist
scoreboard players reset @s over_heal
tag @s remove invis
tag @s remove maxless
tag @s remove resist
tag @s remove invulnerable
scoreboard players reset @s fire
scoreboard players set @s displayHealth 9

return 1