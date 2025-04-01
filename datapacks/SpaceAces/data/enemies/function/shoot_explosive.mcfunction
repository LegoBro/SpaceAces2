summon minecraft:armor_stand ~ ~ ~ {Tags:["plasma_grenade","raycast","grenade","red"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,Marker:1b,Small:1b,Pose:{Head:[180.0f,0.0f,0.0f]}}
tp @e[type=minecraft:armor_stand,tag=plasma_grenade,sort=nearest,limit=1] ~ ~1.6 ~ ~ ~
execute store result score @e[type=minecraft:armor_stand,tag=plasma_grenade,sort=nearest,limit=1] id run scoreboard players get @s id
execute as @e[type=minecraft:armor_stand,tag=plasma_grenade,sort=nearest,limit=1] at @s run function class:bomber/projectile
execute at @s run playsound minecraft:gun.launcher hostile @a ~ ~ ~

return 1