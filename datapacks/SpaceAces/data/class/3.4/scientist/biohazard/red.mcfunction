effect give @e[distance=..2.5,sort=nearest,team=blue] minecraft:unluck 10 0 true
execute as @a if score @s id = place_id id run scoreboard players add @s game_damage 25
kill @s

return 1