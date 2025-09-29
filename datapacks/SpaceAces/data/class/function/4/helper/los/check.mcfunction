## Checks if targeted entity is in LOS
tag @s add los_pass
execute facing entity @s feet positioned ^ ^ ^1 run function class:4/helper/los/raycast
execute if entity @s[tag=los_pass] run return run function class:4/helper/los/store_uuid
scoreboard players set helper.los.particles Numbers 0