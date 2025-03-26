## Throw the vis mine

scoreboard players operation @s ability.2.cooldown = class.mobility.2.cooldown Numbers
scoreboard players reset @s rightClick

summon minecraft:armor_stand ~ ~ ~ {Tags:["flash_grenade","raycast","grenade"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,Marker:1b,Small:1b,Pose:{Head:[180.0f,0.0f,0.0f]}}
scoreboard players operation @n[type=minecraft:armor_stand,tag=flash_grenade,sort=nearest,limit=1,distance=..3] Team = @s Team
execute anchored eyes run tp @e[type=minecraft:armor_stand,tag=flash_grenade,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute store result score @e[type=minecraft:armor_stand,tag=flash_grenade,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute as @e[type=minecraft:armor_stand,tag=flash_grenade,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~1.25 ~ run function classes:mobility/flash_grenade/projectile
playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0

return 1