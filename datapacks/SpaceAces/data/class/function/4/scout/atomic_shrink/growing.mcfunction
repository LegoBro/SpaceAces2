## player grow
#execute if score @s size matches 1.. run scoreboard players set @s size 0
execute store result storage helper:size size float .01 run scoreboard players add @s size 5
function class:4/helper/set_size with storage helper:size