scoreboard players add @s[scores={reload=..4}] reload 1
execute if entity @s[team=blue] facing entity @e[limit=1,sort=nearest,distance=..15,team=red,tag=!invis] feet run tp @s ~ ~ ~ ~ ~
execute if entity @s[team=red] facing entity @e[limit=1,sort=nearest,distance=..15,team=blue,tag=!invis] feet run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={reload=5}] run function classes:mechanic/turret/standard_shoot
