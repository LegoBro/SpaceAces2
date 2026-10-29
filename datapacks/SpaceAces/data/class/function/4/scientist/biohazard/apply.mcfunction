scoreboard players add @s poison 5
execute as @e[type=#projectile:players,tag=hb] if score @s id = place_id id run scoreboard players add @s stat.game.damage_dealt 5

return 1