
scoreboard players operation #Team Team = @s Team
execute positioned ^ ^ ^-0.5 positioned ~ ~-1 ~ as @n[distance=..2,tag=!ignore,tag=!ignore.projectiles] unless score @s Team = #Team Team run effect give @s minecraft:slowness 5 2

return 1