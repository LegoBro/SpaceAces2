execute if entity @e[distance=..3,team=blue] run effect give @s minecraft:slowness 1 1 true
execute unless entity @e[distance=..3,team=blue] run effect give @s minecraft:speed 1 1 true

return 1