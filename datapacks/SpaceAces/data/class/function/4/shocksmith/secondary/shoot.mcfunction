
scoreboard players operation @s shoot = class.shocksmith.secondary.firerate Numbers
scoreboard players operation @s ability.1.cooldown -= class.shocksmith.secondary.cost Numbers

summon item_display ~ ~ ~ {Tags:["shock_grenade","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=shock_grenade,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=shock_grenade,sort=nearest,tag=new,limit=1,distance=..3] at @s positioned ~ ~ ~ run function class:4/shocksmith/secondary/projectile
execute at @s run playsound minecraft:gun.shock_launcher hostile @a ~ ~ ~
return 1