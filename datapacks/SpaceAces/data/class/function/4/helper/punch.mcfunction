## Detects if/when a player punches for 20hp
scoreboard players operation @s melee.cooldown = class.melee.cooldown Numbers

execute positioned ^ ^ ^1 positioned ~ ~1.5 ~ run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0 5 force @a
execute at @s run playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~
scoreboard players operation #Team Team = @s Team
execute anchored eyes positioned ^ ^ ^1 as @e[distance=..3,tag=!ignore,tag=!ignore.projectiles] unless score @s Team = #Team Team run tag @s add class.melee.target
execute anchored eyes positioned ^ ^ ^1 facing entity @n[tag=class.melee.target] feet run function class:4/helper/punch/hit
tag @e[tag=class.melee.target] remove class.melee.target

return 1