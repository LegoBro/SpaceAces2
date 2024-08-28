
summon minecraft:armor_stand ~ ~ ~ {Tags:["rocket","raycast","grenade"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,Marker:1b,Small:1b,Pose:{Head:[180.0f,0.0f,0.0f]}}
execute if entity @s[team=blue] run tag @e[type=minecraft:armor_stand,tag=grenade,sort=nearest,limit=1] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:armor_stand,tag=grenade,sort=nearest,limit=1] add red
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] store result score @e[type=minecraft:armor_stand,sort=nearest,limit=1] damageMultiplier run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
execute if entity @s[scores={crouching=0}] run tp @e[tag=rocket,sort=nearest,limit=1] ~ ~.6 ~ ~ ~0
execute if entity @s[scores={crouching=1..}] run tp @e[tag=rocket,sort=nearest,limit=1] ~ ~.26 ~ ~ ~0
execute store result score @e[tag=rocket,sort=nearest,limit=1] id run scoreboard players get @s id
execute as @e[tag=rocket,sort=nearest,limit=1] at @s positioned ~ ~1.25 ~ run function classes:rocketeer/projectile
execute at @s run playsound minecraft:gun.rocket hostile @a ~ ~ ~
return 1