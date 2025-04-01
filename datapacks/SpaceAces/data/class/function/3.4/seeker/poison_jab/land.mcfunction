particle minecraft:block{block_state:{Name:"minecraft:slime_block"}} ~ ~ ~ 0 0 0 1 10
scoreboard players operation place_id id = @s id
execute if entity @s[tag=blue] run effect give @e[distance=..2,sort=nearest,limit=1,team=red] minecraft:unluck 10 0 true
execute if entity @s[tag=blue] run effect give @e[distance=..2,sort=nearest,limit=1,team=red] minecraft:slowness 10 0 true
execute if entity @s[tag=blue] if entity @e[distance=..2,sort=nearest,limit=1,team=red] as @a if score @s id = place_id id run scoreboard players add @s game_damage 25
execute if entity @s[tag=red] run effect give @e[distance=..2,sort=nearest,limit=1,team=blue] minecraft:unluck 10 0 true
execute if entity @s[tag=red] run effect give @e[distance=..2,sort=nearest,limit=1,team=blue] minecraft:slowness 10 0 true
execute if entity @s[tag=red] if entity @e[distance=..2,sort=nearest,limit=1,team=blue] as @a if score @s id = place_id id run scoreboard players add @s game_damage 25

return 1