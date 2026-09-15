## Poisonous Effects!
scoreboard players add @s poison 10
effect give @s slowness 2 0 true
execute as @e[type=#projectile:players,tag=sab.activePlayer] if score @s id = place_id id run scoreboard players add @s game_damage 10
execute as @e[type=#projectile:players,tag=sab.activePlayer] if score @s id = place_id id run scoreboard players add @s ultimate_charge 10
execute as @e[type=#projectile:players,tag=sab.activePlayer] if score @s id = place_id id run scoreboard players add @s totalShots 1
execute as @e[type=#projectile:players,tag=sab.activePlayer,scores={reload=1..}] if score @s id = place_id id run scoreboard players add @s reload 20