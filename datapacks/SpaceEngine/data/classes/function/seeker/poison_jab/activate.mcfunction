summon minecraft:armor_stand ~ ~ ~ {Tags:["poison_jab","raycast","grenade"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b}
execute if entity @s[team=blue] run tag @e[type=minecraft:armor_stand,tag=grenade,sort=nearest,limit=1] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:armor_stand,tag=grenade,sort=nearest,limit=1] add red
execute if entity @s[scores={crouching=0}] run tp @e[tag=poison_jab,sort=nearest,limit=1] ~ ~.85 ~ ~ ~
execute if entity @s[scores={crouching=1}] run tp @e[tag=poison_jab,sort=nearest,limit=1] ~ ~.45 ~ ~ ~
execute store result score @e[tag=poison_jab,sort=nearest,limit=1] id run scoreboard players get @s id
execute as @e[tag=poison_jab,sort=nearest,limit=1] at @s positioned ~ ~1 ~ run function classes:seeker/poison_jab/projectile
playsound minecraft:block.slime_block.break master @a ~ ~ ~ 1 2

return 1