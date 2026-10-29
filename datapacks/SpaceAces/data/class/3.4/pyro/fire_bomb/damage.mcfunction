scoreboard players add @s fire 3
execute as @a if score @s id = place_id id run scoreboard players add @s stat.game.damage_dealt 3

return 1