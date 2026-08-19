## player grow
#execute if score @s size matches 1.. run scoreboard players set @s size 0
scoreboard players add @s size 5

## Manual Override
execute if score @s size matches 80.. run scoreboard players set @s size 85

scoreboard players set #new_size Numbers -100
scoreboard players operation #new_size Numbers += @s size
execute store result storage helper:size scale float .01 run scoreboard players get #new_size Numbers
function class:4/helper/set/scale with storage helper:size
