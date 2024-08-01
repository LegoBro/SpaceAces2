summon armor_stand ~ ~ ~ {Tags:["stun","raycast","grenade"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b}
execute if entity @s[team=blue] run tag @e[type=armor_stand,tag=grenade,limit=1,sort=nearest] add blue
execute if entity @s[team=red] run tag @e[type=armor_stand,tag=grenade,limit=1,sort=nearest] add red
execute if entity @s[scores={crouching=0}] run tp @e[tag=stun,limit=1,sort=nearest] ~ ~.85 ~ ~ ~
execute if entity @s[scores={crouching=1}] run tp @e[tag=stun,limit=1,sort=nearest] ~ ~.45 ~ ~ ~
execute store result score @e[tag=stun,limit=1,sort=nearest] id run scoreboard players get @s id
execute as @e[tag=stun,limit=1,sort=nearest] at @s positioned ~ ~1 ~ run function classes:shocksmith/stun/projectile
playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 1 2
