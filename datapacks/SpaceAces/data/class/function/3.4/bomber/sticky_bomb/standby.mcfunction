## Standby for sticky bomb (sticks to enemies)
execute if entity @s[tag=blue] at @e[distance=..2,tag=!standby_sticky_bomb,sort=nearest,limit=1,team=red] run tp @s ~ ~-1.5 ~
execute if entity @s[tag=red] at @e[distance=..2,tag=!standby_sticky_bomb,sort=nearest,limit=1,team=blue] run tp @s ~ ~-1.5 ~

return 1