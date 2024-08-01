scoreboard players operation place_id id = @s id
execute if entity @s[tag=blue] run effect give @e[team=red,distance=..2] unluck 3 0
execute if entity @s[tag=blue] if entity @e[team=red,distance=..2] as @a if score @s id = place_id id run scoreboard players add @s game_damage 5
execute if entity @s[tag=red] run effect give @e[team=blue,distance=..2] unluck 3 0
execute if entity @s[tag=red] if entity @e[team=blue,distance=..2] as @a if score @s id = place_id id run scoreboard players add @s game_damage 5
particle block slime_block ~ ~ ~ 0 0 0 0 3 force
playsound block.slime_block.place player @a ~ ~ ~ 2.0 2.0
