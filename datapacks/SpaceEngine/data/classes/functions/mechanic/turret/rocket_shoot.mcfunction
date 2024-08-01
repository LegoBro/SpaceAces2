summon armor_stand ~ ~ ~ {Tags:["rocket","raycast","grenade","warp"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b,tag:{CustomModelData:11150004}}]}
execute if entity @s[team=blue] run tag @e[tag=rocket,limit=1,sort=nearest] add blue
execute if entity @s[team=red] run tag @e[tag=rocket,limit=1,sort=nearest] add red
execute store result score @e[tag=rocket,limit=1,sort=nearest] id run scoreboard players get @s id
tp @e[tag=rocket,limit=1,sort=nearest] ~ ~1.1 ~ ~ ~
execute as @e[tag=rocket,limit=1,sort=nearest] at @s run function classes:rocketeer/projectile
playsound gun.rocket player @a ~ ~ ~ 1.0 1.0
