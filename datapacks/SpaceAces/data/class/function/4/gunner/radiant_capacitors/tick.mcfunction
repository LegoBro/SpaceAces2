scoreboard players set @s shoot -18
execute unless score @s totalShots >= class.gunner.primary.ammo Numbers run scoreboard players add @s totalShots 1