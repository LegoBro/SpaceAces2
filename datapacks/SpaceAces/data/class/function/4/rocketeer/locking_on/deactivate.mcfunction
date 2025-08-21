scoreboard players set @s ultimate_charge 0

scoreboard players operation #rocket_test Numbers = @s ultimate.cooldown
scoreboard players operation #rocket_test Numbers %= class.rocketeer.ultimate.interval Numbers
execute if score #rocket_test Numbers matches 1.. run return 1

## Acquire Enemy
execute as @e[tag=!ignore.projectiles,tag=!invis,distance=..50,tag=!ignore] unless score @s Team = Team Team run tag @s add target.enemy

execute as @e[distance=..50,tag=target.enemy,sort=random,limit=1] run function class:4/helper/los/check

execute facing entity @n[tag=los_pass,limit=1,distance=..50] feet run function class:4/rocketeer/locking_on/shoot

tag @a remove target.owner
tag @e remove target.enemy
tag @e remove los_pass


return 1