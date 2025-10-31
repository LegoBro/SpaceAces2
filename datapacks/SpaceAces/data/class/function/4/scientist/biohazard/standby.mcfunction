## What a gooey mess
scoreboard players add @s i 1
execute if score @s i matches 200.. run kill @s
particle minecraft:block{block_state:{Name:"minecraft:slime_block"}} ~ ~ ~ 0 0 0 1 1 normal @a

scoreboard players operation place_id id = @s id
scoreboard players operation #Team Team = @s Team
execute as @e[tag=!ignore,tag=!projectile.ignore,distance=..0.5,scores={health=1..}] unless score @s Team = #Team Team run function class:4/scientist/biohazard/apply

return 1