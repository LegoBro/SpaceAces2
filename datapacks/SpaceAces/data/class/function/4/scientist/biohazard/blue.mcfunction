effect give @e[distance=..2.5,sort=nearest,team=red] minecraft:unluck 10 0 true
execute as @e[type=#projectile:players,tag=sab.activePlayer] if score @s id = place_id id run scoreboard players add @s game_damage 25
kill @s

return 1