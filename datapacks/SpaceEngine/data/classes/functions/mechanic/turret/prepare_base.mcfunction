execute if entity @s[team=blue] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Team:"blue",Small:1b,Marker:1b,Invisible:1b,Tags:["turret","standard"],ArmorItems:[{},{},{},{id:"minecraft:tropical_fish",Count:1b}]}
execute if entity @s[team=red] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Team:"red",Small:1b,Marker:1b,Invisible:1b,Tags:["turret","standard"],ArmorItems:[{},{},{},{id:"minecraft:porkchop",Count:1b}]}
scoreboard players operation @e[type=armor_stand,tag=turret,limit=1,sort=nearest] id = @s id
tag @s add prepared
