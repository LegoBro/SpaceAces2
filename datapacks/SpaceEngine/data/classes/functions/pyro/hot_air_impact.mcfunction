## Hot stuff
particle flame ~ ~ ~ 0.1 0.1 0.1 .01 10
scoreboard players operation place_id id = @s id
execute if entity @s[tag=blue] run scoreboard players add @e[team=red,distance=..2,limit=1,sort=nearest] fire 15
execute if entity @s[tag=blue] if entity @e[team=red,distance=..2,limit=1,sort=nearest] as @a if score @s id = place_id id run scoreboard players add @s game_damage 15
execute if entity @s[tag=red] run scoreboard players add @e[team=blue,distance=..2,limit=1,sort=nearest] fire 15
execute if entity @s[tag=red] if entity @e[team=blue,distance=..2,limit=1,sort=nearest] as @a if score @s id = place_id id run scoreboard players add @s game_damage 15
