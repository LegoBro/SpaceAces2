## Poisonous Effects!
effect give @s minecraft:unluck 2 0 true
effect give @s slowness 2 0 true
execute as @a if score @s id = place_id id run scoreboard players add @s game_damage 10