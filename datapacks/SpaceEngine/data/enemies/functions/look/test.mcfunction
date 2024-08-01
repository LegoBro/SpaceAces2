tag @s remove canSee
execute facing entity @e[team=blue,limit=1,sort=nearest] feet positioned ~ ~1 ~ positioned ^ ^ ^1 run function enemies:look/loop
