execute if score @s fire matches 1.. run return 0
scoreboard players add @s fire 3
execute as @a if score @s id = place_id id run scoreboard players add @s game_damage 3
execute as @a if score @s id = place_id id run scoreboard players add @s ultimate_charge 3

return 1