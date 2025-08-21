## Standby for firebomb
particle minecraft:flame ~ ~ ~ 0.01 1.5 0.01 0.001 5
scoreboard players operation place_id id = @s id
scoreboard players operation Team Team = @s Team
execute as @e[distance=..1,tag=!ignore,tag=!ignore.projectiles] unless score @s Team = Team Team run function class:4/pyro/fire_bomb/damage
execute as @a[distance=..1] if score @s id = place_id id run function class:4/pyro/fire_bomb/damage
scoreboard players add @s i 1
tp @s ~ ~ ~ ~5 ~
execute if score @s i matches 50.. run return run kill @s
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 1 1 0

return 1