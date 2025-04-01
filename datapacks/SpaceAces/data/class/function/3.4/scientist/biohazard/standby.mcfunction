## What a gooey mess
scoreboard players add @s i 1
execute if score @s i matches 200 run kill @s
particle minecraft:block{block_state:{Name:"minecraft:slime_block"}} ~ ~1.9 ~ 0 0 0 1 10

scoreboard players operation place_id id = @s id
execute if entity @s[tag=blue] at @e[distance=..2.5,sort=nearest,team=red] run function class:3.4/scientist/biohazard/blue
execute if entity @s[tag=red] at @e[distance=..2.5,sort=nearest,team=blue] run function class:3.4/scientist/biohazard/red

return 1