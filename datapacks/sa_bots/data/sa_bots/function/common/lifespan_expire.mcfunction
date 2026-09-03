#no effect on players
execute if entity @s[type=player] run return run scoreboard players reset @s sab.lifespan
#=====

#tp really far down
#(unless we have passengers, in which case we need something special)
scoreboard players set #passengers sab.var 0
execute on passengers run scoreboard players add #passengers sab.var 1
execute if score #passengers sab.var matches 1.. on passengers run ride @s dismount
tp @s ~ ~-10000 ~

#die
scoreboard players reset @s
kill @s