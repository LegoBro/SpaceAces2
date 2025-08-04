# New target time penalty
scoreboard players set @s reload -20

execute as @n[tag=target.enemy,sort=nearest] run function class:4/mechanic/turret/los_check

# Store target
execute store result score @s target.0 run scoreboard players get @n[tag=los_pass] target.0
execute store result score @s target.1 run scoreboard players get @n[tag=los_pass] target.1
execute store result score @s target.2 run scoreboard players get @n[tag=los_pass] target.2
execute store result score @s target.3 run scoreboard players get @n[tag=los_pass] target.3