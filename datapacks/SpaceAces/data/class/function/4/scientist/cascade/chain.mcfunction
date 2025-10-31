scoreboard players set @s i 0
scoreboard players operation Team Team = @s Team
execute at @s as @e[tag=!ignore.projectiles,tag=!invis,distance=..150,tag=!ignore,scores={poison=1..}] unless score @s Team = Team Team run tag @s add target.enemy
execute as @e[tag=target.enemy,sort=random,limit=1] run function class:4/helper/los/enemy_finder_random
execute facing entity @n[tag=los_pass] feet positioned ^ ^ ^ run function class:4/scientist/cascade/loop
scoreboard players operation place_id id = @s id
execute as @n[tag=los_pass] run function class:4/scientist/cascade/apply
#say @n[tag=los_pass]

execute if entity @n[tag=los_pass] run scoreboard players remove @s health 1
tag @e[tag=target.enemy] remove target.enemy
execute if entity @n[tag=los_pass] run return run tag @e remove los_pass

scoreboard players set @s health 0

