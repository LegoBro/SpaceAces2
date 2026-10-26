## Reload
scoreboard players operation @s totalShots = class.sniper.primary.ammo Numbers
playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s reload 0
scoreboard players set @s shoot 0