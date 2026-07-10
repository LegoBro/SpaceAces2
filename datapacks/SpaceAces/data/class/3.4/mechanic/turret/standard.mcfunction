scoreboard players add @s[scores={reload=..4}] reload 1
execute if entity @s[team=blue] facing entity @e[distance=..15,tag=!invis,sort=nearest,limit=1,team=red] feet run tp @s ^ ^ ^ ~ ~
execute if entity @s[team=red] facing entity @e[distance=..15,tag=!invis,sort=nearest,limit=1,team=blue] feet run tp @s ^ ^ ^ ~ ~
execute if entity @s[scores={reload=5}] run function class:3.4/mechanic/turret/standard_shoot

return 1