## pyro Done reloading


scoreboard players operation @s[tag=!class.pyro.sticky_mode] totalShots = class.pyro.primary.ammo Numbers
scoreboard players operation @s[tag=class.pyro.sticky_mode] totalShots = class.pyro.secondary.ammo Numbers
playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s reload 0