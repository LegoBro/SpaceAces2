scoreboard players operation place_id id = @s id
particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=blue] facing entity @p[team=blue] feet run tp @s ^ ^ ^.3
execute if entity @s[tag=blue] as @p[team=blue,distance=...5] run function classes:shocksmith/energy_sap/energize
execute if entity @s[tag=red] facing entity @p[team=red] feet run tp @s ^ ^ ^.3
execute if entity @s[tag=red] as @p[team=red,distance=...5] run function classes:shocksmith/energy_sap/energize
