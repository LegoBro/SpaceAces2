summon minecraft:armor_stand ~ ~ ~ {Tags:["poison_jab","raycast","grenade","ignore.projectiles","new"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b}
execute anchored eyes run tp @e[type=minecraft:armor_stand,tag=poison_jab,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:armor_stand,tag=poison_jab,tag=new,sort=nearest,limit=1,distance=..3] at @s run function classes:4/seeker/poison_jab/projectile
playsound minecraft:block.slime_block.break master @a ~ ~ ~ 1 2

scoreboard players operation @s ability.1.cooldown += class.seeker.1.cooldown Numbers
scoreboard players reset @s rightClick

execute if score @s ability.2.cooldown >= class.seeker.2.duration Numbers run scoreboard players operation @s ability.2.cooldown = class.seeker.2.duration Numbers

return 1