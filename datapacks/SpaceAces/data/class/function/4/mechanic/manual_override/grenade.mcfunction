## Hot stuff
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 .01 10
scoreboard players operation place_id id = @s id
scoreboard players operation Team Team = @s Team
execute as @a if score @s id = place_id id run tag @s add target.owner
execute positioned ^ ^ ^-0.5 as @e[distance=..2,tag=!ignore.projectiles] unless score @s Team = Team Team run function class:4/mechanic/manual_override/ignite
tag @a remove target.owner
return 1