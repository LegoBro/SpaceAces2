## player shrink


scoreboard players remove @s size 5

## Manual Override
execute if score @s size matches ..30 run scoreboard players set @s size 25

scoreboard players set #new_size Numbers -100
scoreboard players operation #new_size Numbers += @s size
execute store result storage helper:size scale float .01 run scoreboard players get #new_size Numbers
function class:4/helper/set/scale with storage helper:size
