scoreboard players set @s size 0
execute store result storage helper:size size float .01 run scoreboard players get @s size
#data modify storage helper:size size set value -0.8

function class:4/helper/set_size with storage helper:size
effect give @s minecraft:speed 10 5 true

scoreboard players set @s ultimate_charge 0
scoreboard players operation @s ultimate.cooldown = class.scout.ultimate.duration Numbers

scoreboard players reset @s rightClick
return 1