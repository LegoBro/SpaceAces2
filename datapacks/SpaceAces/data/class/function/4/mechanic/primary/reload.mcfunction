## mechanic Done reloading

scoreboard players set @s shoot 0
scoreboard players operation @s totalShots = class.mechanic.primary.ammo Numbers
playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s reload 0