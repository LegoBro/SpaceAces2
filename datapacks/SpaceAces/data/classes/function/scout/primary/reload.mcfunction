## Scout Done reloading


scoreboard players operation @s totalShots = class.scout.primary.ammo Numbers
playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s reload 0