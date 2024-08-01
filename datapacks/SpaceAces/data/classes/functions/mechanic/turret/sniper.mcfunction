scoreboard players add @s[scores={reload=..9}] reload 1
execute if entity @s[team=blue] facing entity @e[limit=1,sort=nearest,distance=..25,team=red,tag=!invis] feet run tp @s ~ ~ ~ ~ ~
execute if entity @s[team=red] facing entity @e[limit=1,sort=nearest,distance=..25,team=blue,tag=!invis] feet run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={reload=10}] run function classes:mechanic/turret/sniper_shoot
