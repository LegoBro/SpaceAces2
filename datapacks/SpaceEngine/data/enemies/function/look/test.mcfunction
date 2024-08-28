tag @s remove canSee
execute facing entity @e[sort=nearest,limit=1,team=blue] feet positioned ~ ~1 ~ positioned ^ ^ ^1 run function enemies:look/loop

return 1