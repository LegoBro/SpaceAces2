## Poisonous Effects!
scoreboard players add @s poison 10
effect give @s slowness 2 0 true
execute as @a if score @s id = place_id id run scoreboard players add @s game_damage 10
execute as @a if score @s id = place_id id run scoreboard players add @s ultimate_charge 10
execute as @a if score @s id = place_id id run scoreboard players add @s totalShots 1