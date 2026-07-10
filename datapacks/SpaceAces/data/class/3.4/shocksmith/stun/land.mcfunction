execute if entity @s[tag=blue] run effect give @e[distance=..2,sort=nearest,limit=1,team=red] minecraft:slowness 5 50
execute if entity @s[tag=red] run effect give @e[distance=..2,sort=nearest,limit=1,team=blue] minecraft:slowness 5 50

return 1