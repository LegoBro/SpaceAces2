#These commands are for the training area
tp @a[tag=trainee,scores={health=..0}] 9987 132 -3
execute as @a[tag=trainee,scores={health=..0}] at @s run function gamemode:respawn


#execute positioned ~ ~2 ~ unless entity @n[type=minecraft:mannequin,distance=..5] rotated -90 ~ run function class:4/bomber/npc
#scoreboard players set @n[type=minecraft:mannequin] Team 3

return 1