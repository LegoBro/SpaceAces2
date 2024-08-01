particle block slime_block ~ ~ ~ 0 0 0 1 10
scoreboard players operation place_id id = @s id
execute if entity @s[tag=blue] run effect give @e[team=red,distance=..2,limit=1,sort=nearest] unluck 10 0 true
execute if entity @s[tag=blue] run effect give @e[team=red,distance=..2,limit=1,sort=nearest] slowness 10 0 true
execute if entity @s[tag=blue] if entity @e[team=red,distance=..2,limit=1,sort=nearest] as @a if score @s id = place_id id run scoreboard players add @s game_damage 25
execute if entity @s[tag=red] run effect give @e[team=blue,distance=..2,limit=1,sort=nearest] unluck 10 0 true
execute if entity @s[tag=red] run effect give @e[team=blue,distance=..2,limit=1,sort=nearest] slowness 10 0 true
execute if entity @s[tag=red] if entity @e[team=blue,distance=..2,limit=1,sort=nearest] as @a if score @s id = place_id id run scoreboard players add @s game_damage 25
