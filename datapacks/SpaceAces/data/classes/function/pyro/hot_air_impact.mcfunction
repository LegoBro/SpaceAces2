## Hot stuff
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 .01 10
scoreboard players operation place_id id = @s id
execute if entity @s[tag=blue] run scoreboard players add @e[distance=..2,sort=nearest,limit=1,team=red] fire 15
execute if entity @s[tag=blue] if entity @e[distance=..2,sort=nearest,limit=1,team=red] as @a if score @s id = place_id id run scoreboard players add @s game_damage 15
execute if entity @s[tag=red] run scoreboard players add @e[distance=..2,sort=nearest,limit=1,team=blue] fire 15
execute if entity @s[tag=red] if entity @e[distance=..2,sort=nearest,limit=1,team=blue] as @a if score @s id = place_id id run scoreboard players add @s game_damage 15

return 1