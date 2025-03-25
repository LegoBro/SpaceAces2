## Reload
scoreboard players operation @s totalShots = class.soldier.primary.ammo Numbers
playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s reload 0