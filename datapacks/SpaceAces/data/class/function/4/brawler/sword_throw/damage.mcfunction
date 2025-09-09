scoreboard players add @s damage 10
execute as @a if score @s id = place_id id run scoreboard players add @s game_damage 10
execute as @a if score @s id = place_id id run scoreboard players add @s ultimate_charge 10

return 1