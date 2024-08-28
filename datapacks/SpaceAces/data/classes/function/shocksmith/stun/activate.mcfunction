summon minecraft:armor_stand ~ ~ ~ {Tags:["stun","raycast","grenade"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b}
execute if entity @s[team=blue] run tag @e[type=minecraft:armor_stand,tag=grenade,sort=nearest,limit=1] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:armor_stand,tag=grenade,sort=nearest,limit=1] add red
execute if entity @s[scores={crouching=0}] run tp @e[tag=stun,sort=nearest,limit=1] ~ ~.85 ~ ~ ~
execute if entity @s[scores={crouching=1}] run tp @e[tag=stun,sort=nearest,limit=1] ~ ~.45 ~ ~ ~
execute store result score @e[tag=stun,sort=nearest,limit=1] id run scoreboard players get @s id
execute as @e[tag=stun,sort=nearest,limit=1] at @s positioned ~ ~1 ~ run function classes:shocksmith/stun/projectile
playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 1 2

return 1