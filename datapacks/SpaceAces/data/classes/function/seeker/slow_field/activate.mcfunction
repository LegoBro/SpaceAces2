execute if entity @s[team=blue] run effect give @e[distance=..7,team=red] minecraft:slowness 3 2 true
execute if entity @s[team=red] run effect give @e[distance=..7,team=blue] minecraft:slowness 3 2 true
execute if entity @s[team=blue] at @a[team=red] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_terracotta"}} ~ ~ ~ 0.3 1.3 .3 .2 50 force @a
execute if entity @s[team=red] at @a[team=blue] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_terracotta"}} ~ ~ ~ 0.3 1.3 .3 .2 50 force @a
playsound minecraft:block.bubble_column.whirlpool_inside player @a ~ ~ ~ 1 2

scoreboard players operation @s ability.2.cooldown = class.seeker.2.cooldown Numbers
scoreboard players reset @s rightClick

return 1