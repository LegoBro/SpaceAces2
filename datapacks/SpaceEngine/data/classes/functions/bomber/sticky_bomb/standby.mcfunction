## Standby for sticky bomb (sticks to enemies)
execute if entity @s[tag=blue] at @e[distance=..2,team=red,sort=nearest,limit=1,tag=!standby_sticky_bomb] run tp @s ~ ~-1.5 ~
execute if entity @s[tag=red] at @e[distance=..2,team=blue,sort=nearest,limit=1,tag=!standby_sticky_bomb] run tp @s ~ ~-1.5 ~
