
summon minecraft:armor_stand ~ ~ ~ {Tags:["chem","raycast","grenade"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,Marker:1b,Small:1b,Pose:{Head:[180.0f,0.0f,0.0f]}}
summon minecraft:armor_stand ~ ~ ~ {Tags:["chem","raycast","grenade"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,Marker:1b,Small:1b,Pose:{Head:[180.0f,0.0f,0.0f]}}
summon minecraft:armor_stand ~ ~ ~ {Tags:["chem","raycast","grenade"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,Marker:1b,Small:1b,Pose:{Head:[180.0f,0.0f,0.0f]}}
execute if entity @s[team=blue] run tag @e[type=minecraft:armor_stand,tag=grenade,sort=nearest,limit=3] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:armor_stand,tag=grenade,sort=nearest,limit=3] add red
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] store result score @e[type=minecraft:armor_stand,sort=nearest,limit=3] damageMultiplier run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
execute if entity @s[scores={crouching=0}] run tp @e[tag=chem,sort=nearest,limit=3] ~ ~.6 ~ ~ ~0
execute if entity @s[scores={crouching=1..}] run tp @e[tag=chem,sort=nearest,limit=3] ~ ~.26 ~ ~ ~0
execute store result score @e[tag=chem,sort=nearest,limit=3] id run scoreboard players get @s id
execute as @e[tag=chem,sort=nearest,limit=3] at @s positioned ~ ~1.25 ~ run function classes:scientist/projectile
execute at @s run playsound minecraft:gun.chem_launcher hostile @a ~ ~ ~
return 1