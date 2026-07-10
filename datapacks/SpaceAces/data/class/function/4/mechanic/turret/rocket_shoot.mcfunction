summon minecraft:armor_stand ~ ~ ~ {Tags:["rocket","raycast","grenade","warp"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:paper",components:{"item_model":"rocketeer/grenade"},count:1}]}
execute if entity @s[team=blue] run tag @e[type=armor_stand,tag=rocket,sort=nearest,limit=1,distance=..3] add blue
execute if entity @s[team=red] run tag @e[type=armor_stand,tag=rocket,sort=nearest,limit=1,distance=..3] add red
execute store result score @e[type=armor_stand,tag=rocket,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
tp @e[type=armor_stand,tag=rocket,sort=nearest,limit=1] ~ ~1.1 ~ ~ ~
execute as @e[type=armor_stand,tag=rocket,sort=nearest,limit=1,distance=..3] at @s run function class:rocketeer/projectile
playsound minecraft:gun.rocket player @a ~ ~ ~ 1.0 1.0

return 1