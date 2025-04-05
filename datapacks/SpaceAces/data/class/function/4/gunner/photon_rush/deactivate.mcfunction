effect give @s slowness 1 5 true

scoreboard players operation #damage Numbers = class.gunner.1.damage Numbers
scoreboard players operation #critMult Numbers = class.gunner.1.critMult Numbers
scoreboard players operation #falloff Numbers = class.gunner.1.falloff Numbers
scoreboard players operation #falloffStart Numbers = class.gunner.1.falloffStart Numbers

scoreboard players operation #team Team = @s Team

scoreboard players operation place_id id = @s id
tag @s add attacker
execute facing entity @e[distance=1..6,tag=!ignore,tag=!ignore.projectiles] feet positioned ^ ^ ^ run function projectile:boomer/create
execute as @e[distance=..0.999,tag=!ignore,tag=!ignore.projectiles] unless score @s Team = #team Team run function class:4/bomber/sticky_bomb/damage_near
tag @s remove attacker

scoreboard players operation @s ability.1.cooldown = class.gunner.1.duration Numbers
scoreboard players remove @s ability.1.cooldown 1
playsound minecraft:item.mace.smash_ground player @a
particle minecraft:poof ~ ~ ~ 2 0 2 0 50 force
return 1