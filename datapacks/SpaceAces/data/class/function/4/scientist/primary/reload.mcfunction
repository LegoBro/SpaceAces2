## scientist Done reloading


scoreboard players operation @s[tag=!class.scientist.sticky_mode] totalShots = class.scientist.primary.ammo Numbers
scoreboard players operation @s[tag=class.scientist.sticky_mode] totalShots = class.scientist.secondary.ammo Numbers
playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s reload 0