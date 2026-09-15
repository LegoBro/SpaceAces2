scoreboard players set @s ultimate_charge 0

scoreboard players operation #rocket_test Numbers = @s ultimate.cooldown
scoreboard players operation #rocket_test Numbers %= class.rocketeer.ultimate.interval Numbers
execute if score #rocket_test Numbers matches 1.. run return 1

## Acquire Enemy
scoreboard players operation Team Team = @s Team
execute as @e[tag=!ignore.projectiles,tag=!invis,distance=..50,tag=!ignore,tag=entity] unless score @s Team = Team Team run tag @s add target.enemy
execute as @e[type=#projectile:players,tag=sab.activePlayer,tag=!invis] unless score @s Team = Team Team run tag @s add target.enemy

execute as @e[distance=..35,tag=target.enemy,sort=random] run function class:4/helper/los/check

execute facing entity @e[tag=los_pass,limit=1,sort=random,distance=..50] feet run function class:4/rocketeer/locking_on/shoot

tag @e[type=#projectile:players,tag=sab.activePlayer] remove target.owner
tag @e remove target.enemy
tag @e remove los_pass

return 1