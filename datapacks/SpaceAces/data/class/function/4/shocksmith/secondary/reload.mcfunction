## rocketeer Done reloading


scoreboard players operation @s[tag=!class.rocketeer.sticky_mode] totalShots = class.rocketeer.primary.ammo Numbers
scoreboard players operation @s[tag=class.rocketeer.sticky_mode] totalShots = class.rocketeer.secondary.ammo Numbers
playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s reload 0