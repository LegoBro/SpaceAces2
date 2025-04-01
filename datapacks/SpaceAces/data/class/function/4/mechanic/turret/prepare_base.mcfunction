execute if entity @s[team=blue] run summon minecraft:armor_stand ~ ~-1 ~ {NoGravity:1b,Team:"blue",Small:1b,Marker:1b,Invisible:1b,Tags:["turret","standard"],ArmorItems:[{},{},{},{id:"minecraft:tropical_fish",count:1}]}
execute if entity @s[team=red] run summon minecraft:armor_stand ~ ~-1 ~ {NoGravity:1b,Team:"red",Small:1b,Marker:1b,Invisible:1b,Tags:["turret","standard"],ArmorItems:[{},{},{},{id:"minecraft:porkchop",count:1}]}
scoreboard players operation @e[type=minecraft:armor_stand,tag=turret,sort=nearest,limit=1,distance=..3] id = @s id
tag @s add prepared

return 1