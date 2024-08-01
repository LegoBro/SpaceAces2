## Summons gooey mess
summon armor_stand ~ ~-1.9 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}],Tags:["poison_trail"],NoGravity:1b}
execute store result score @e[type=armor_stand,tag=poison_trail,limit=1,sort=nearest] id run scoreboard players get @s id
execute if entity @s[team=blue] run tag @e[type=armor_stand,tag=poison_trail,limit=1,sort=nearest] add blue
execute if entity @s[team=red] run tag @e[type=armor_stand,tag=poison_trail,limit=1,sort=nearest] add red
playsound block.slime_block.place hostile @a
