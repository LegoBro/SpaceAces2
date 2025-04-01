scoreboard players operation place_id id = @s id
particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=blue] facing entity @p[team=blue] feet run tp @s ^ ^ ^.3
execute if entity @s[tag=blue] as @p[distance=...5,team=blue] run function class:3.4/shocksmith/energy_sap/energize
execute if entity @s[tag=red] facing entity @p[team=red] feet run tp @s ^ ^ ^.3
execute if entity @s[tag=red] as @p[distance=...5,team=red] run function class:3.4/shocksmith/energy_sap/energize

return 1