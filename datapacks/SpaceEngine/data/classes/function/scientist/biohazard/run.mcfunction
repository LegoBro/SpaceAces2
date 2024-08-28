## Summons gooey mess
summon minecraft:armor_stand ~ ~-1.9 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:slime_block",count:1}],Tags:["poison_trail"],NoGravity:1b}
execute store result score @e[type=minecraft:armor_stand,tag=poison_trail,sort=nearest,limit=1] id run scoreboard players get @s id
execute if entity @s[team=blue] run tag @e[type=minecraft:armor_stand,tag=poison_trail,sort=nearest,limit=1] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:armor_stand,tag=poison_trail,sort=nearest,limit=1] add red
playsound minecraft:block.slime_block.place hostile @a

return 1