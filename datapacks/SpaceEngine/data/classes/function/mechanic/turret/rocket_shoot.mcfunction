summon minecraft:armor_stand ~ ~ ~ {Tags:["rocket","raycast","grenade","warp"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:paper",components:{"minecraft:custom_model_data":11150004},count:1}]}
execute if entity @s[team=blue] run tag @e[tag=rocket,sort=nearest,limit=1] add blue
execute if entity @s[team=red] run tag @e[tag=rocket,sort=nearest,limit=1] add red
execute store result score @e[tag=rocket,sort=nearest,limit=1] id run scoreboard players get @s id
tp @e[tag=rocket,sort=nearest,limit=1] ~ ~1.1 ~ ~ ~
execute as @e[tag=rocket,sort=nearest,limit=1] at @s run function classes:rocketeer/projectile
playsound minecraft:gun.rocket player @a ~ ~ ~ 1.0 1.0

return 1