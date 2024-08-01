summon armor_stand ~ ~ ~ {Tags:["plasma_grenade","raycast","grenade","red"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,Marker:1b,Small:1b,Pose:{Head:[180f,0f,0f]}}
tp @e[type=armor_stand,tag=plasma_grenade,limit=1,sort=nearest] ~ ~1.6 ~ ~ ~
execute store result score @e[type=armor_stand,tag=plasma_grenade,limit=1,sort=nearest] id run scoreboard players get @s id
execute as @e[type=armor_stand,tag=plasma_grenade,limit=1,sort=nearest] at @s run function classes:bomber/projectile
execute as @s at @s run playsound gun.launcher hostile @a ~ ~ ~
