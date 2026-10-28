# No gamemode is running, so this is default behavior.
execute as @e[type=#projectile:players,tag=hb,scores={health=..0}] at @s run function gamemode:none/death