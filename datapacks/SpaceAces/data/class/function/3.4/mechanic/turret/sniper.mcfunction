scoreboard players add @s[scores={reload=..9}] reload 1
execute if entity @s[team=blue] facing entity @e[distance=..25,tag=!invis,sort=nearest,limit=1,team=red] feet run tp @s ^ ^ ^ ~ ~
execute if entity @s[team=red] facing entity @e[distance=..25,tag=!invis,sort=nearest,limit=1,team=blue] feet run tp @s ^ ^ ^ ~ ~
execute if entity @s[scores={reload=10}] run function class:3.4/mechanic/turret/sniper_shoot

return 1