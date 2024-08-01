
summon armor_stand ~ ~ ~ {Tags:["plasma_grenade","raycast","grenade"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,Marker:1b,Small:1b,Pose:{Head:[180f,0f,0f]}}
execute if entity @s[team=blue] run tag @e[type=armor_stand,tag=grenade,limit=1,sort=nearest] add blue
execute if entity @s[team=red] run tag @e[type=armor_stand,tag=grenade,limit=1,sort=nearest] add red
execute if entity @s[nbt={ActiveEffects:[{Id:26b}]}] store result score @e[type=armor_stand,limit=1,sort=nearest] damageMultiplier run data get entity @s ActiveEffects[{Id:26b}].Amplifier
execute if entity @s[scores={crouching=0}] run tp @e[tag=plasma_grenade,limit=1,sort=nearest] ~ ~.6 ~ ~ ~0
execute if entity @s[scores={crouching=1..}] run tp @e[tag=plasma_grenade,limit=1,sort=nearest] ~ ~.26 ~ ~ ~0
execute store result score @e[tag=plasma_grenade,limit=1,sort=nearest] id run scoreboard players get @s id
execute as @e[tag=plasma_grenade,limit=1,sort=nearest] at @s positioned ~ ~1.25 ~ run function classes:bomber/projectile
execute as @s at @s run playsound gun.launcher hostile @a ~ ~ ~