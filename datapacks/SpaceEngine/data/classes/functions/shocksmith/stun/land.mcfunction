execute if entity @s[tag=blue] run effect give @e[team=red,distance=..2,limit=1,sort=nearest] slowness 5 50
execute if entity @s[tag=red] run effect give @e[team=blue,distance=..2,limit=1,sort=nearest] slowness 5 50
