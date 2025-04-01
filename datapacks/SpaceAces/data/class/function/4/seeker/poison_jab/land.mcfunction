tag @s add ignore.projectiles
particle minecraft:block{block_state:{Name:"minecraft:slime_block"}} ~ ~ ~ 0 0 0 1 10
scoreboard players operation place_id id = @s id
scoreboard players operation #team Team = @s Team
execute positioned ~ ~-1 ~ as @n[distance=..2,tag=!ignore.projectiles] unless score @s Team = #team Team run function class:4/seeker/poison_jab/apply


return 1