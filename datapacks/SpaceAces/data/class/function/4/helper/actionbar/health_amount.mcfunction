## How much health
execute if score #full_health_bar Numbers matches ..-1 run return 1
scoreboard players remove #full_health_bar Numbers 1
scoreboard players remove #health_bar Numbers 1

# Empty = Easy
execute if score #health_bar Numbers matches ..-2 run return run function class:4/helper/actionbar/health/add_empty

execute if score @s invulnerable matches 1.. run return run function class:4/helper/actionbar/health/add_invuln

execute if score @s damage_display matches ..-1 run return run function class:4/helper/actionbar/health/add_healing

execute if score @s fire matches 1.. run return run function class:4/helper/actionbar/health/add_fire
execute if score @s poison matches 1.. run return run function class:4/helper/actionbar/health/add_poison

execute if score @s damage_display matches 1.. run return run function class:4/helper/actionbar/health/add_damage

execute if score @s resist matches 1.. run return run function class:4/helper/actionbar/health/add_resist
execute if score #health_bar Numbers matches 40.. run return run function class:4/helper/actionbar/health/add_healing
execute run return run function class:4/helper/actionbar/health/add_health

# Empty, last resort
return run function class:4/helper/actionbar/health/add_empty