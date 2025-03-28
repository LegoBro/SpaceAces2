## bomber Done reloading


scoreboard players operation @s[tag=!class.bomber.sticky_mode] totalShots = class.bomber.primary.ammo Numbers
scoreboard players operation @s[tag=class.bomber.sticky_mode] totalShots = class.bomber.secondary.ammo Numbers
playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s reload 0