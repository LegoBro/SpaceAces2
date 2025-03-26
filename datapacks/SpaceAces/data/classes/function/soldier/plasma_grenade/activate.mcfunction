summon item_display ~ ~ ~ {Tags:["plasma_grenade","raycast","grenade","ignore.projectiles"],teleport_duration:1}
scoreboard players operation @n[type=minecraft:item_display,tag=grenade,sort=nearest,limit=1,distance=..3] Team = @s Team
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] store result score @e[type=minecraft:item_display,sort=nearest,limit=1,distance=..3] damageMultiplier run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
execute anchored eyes run tp @e[type=minecraft:item_display,tag=plasma_grenade,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute store result score @e[type=minecraft:item_display,tag=plasma_grenade,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute as @e[type=minecraft:item_display,tag=plasma_grenade,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function classes:bomber/primary/projectile

playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0

scoreboard players operation @s ability.1.cooldown = class.soldier.1.cooldown Numbers
scoreboard players reset @s rightClick

return 1