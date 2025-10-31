
scoreboard players operation @s ability.1.cooldown = class.scientist.1.cooldown Numbers
scoreboard players reset @s rightClick

execute anchored eyes run summon marker ^ ^ ^1 {Tags:["class.deployable","class.scientist.cascade","new"]}
execute as @e[type=minecraft:marker,tag=class.scientist.cascade,sort=nearest,tag=new,limit=1,distance=..3] at @s positioned ~ ~ ~ run function class:4/scientist/cascade/projectile

return 1