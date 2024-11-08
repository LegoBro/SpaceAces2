summon minecraft:armor_stand ~ ~ ~ {Tags:["poison_jab","raycast","grenade"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b}
execute if entity @s[team=blue] run tag @e[type=minecraft:armor_stand,tag=grenade,sort=nearest,limit=1,distance=..3] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:armor_stand,tag=grenade,sort=nearest,limit=1,distance=..3] add red
execute if entity @s[scores={crouching=0}] run tp @e[type=minecraft:armor_stand,tag=poison_jab,sort=nearest,limit=1,distance=..3] ~ ~.85 ~ ~ ~
execute if entity @s[scores={crouching=1}] run tp @e[type=minecraft:armor_stand,tag=poison_jab,sort=nearest,limit=1,distance=..3] ~ ~.45 ~ ~ ~
execute store result score @e[type=minecraft:armor_stand,tag=poison_jab,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute as @e[type=minecraft:armor_stand,tag=poison_jab,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~1 ~ run function classes:seeker/poison_jab/projectile
playsound minecraft:block.slime_block.break master @a ~ ~ ~ 1 2

return 1