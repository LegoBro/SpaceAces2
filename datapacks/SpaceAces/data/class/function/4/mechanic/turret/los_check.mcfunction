## Checks if targeted entity is in LOS
tag @s add los_pass
execute facing entity @s feet positioned ^ ^ ^1 run function class:4/mechanic/turret/los_raycast
execute if entity @s[tag=los_pass] run return run function class:4/mechanic/turret/store_uuid

# Entity is not in LOS, so check next one
tag @s remove target.enemy
execute as @n[tag=target.enemy,sort=nearest] run function class:4/mechanic/turret/los_check