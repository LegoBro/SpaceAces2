scoreboard players operation place_id id = @s id
execute if entity @s[tag=blue] run effect give @e[distance=..2,team=red] minecraft:unluck 3 0
execute if entity @s[tag=blue] if entity @e[distance=..2,team=red] as @a if score @s id = place_id id run scoreboard players add @s game_damage 5
execute if entity @s[tag=red] run effect give @e[distance=..2,team=blue] minecraft:unluck 3 0
execute if entity @s[tag=red] if entity @e[distance=..2,team=blue] as @a if score @s id = place_id id run scoreboard players add @s game_damage 5
particle minecraft:block{block_state:{Name:"minecraft:slime_block"}} ~ ~ ~ 0 0 0 0 3 force
playsound minecraft:block.slime_block.place player @a ~ ~ ~ 2.0 2.0

return 1