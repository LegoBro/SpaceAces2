#executed by the target waypoint Marker


#are we a different sector than the source? if so, remember it
scoreboard players set #read1 sab.var -1
execute if data entity @s data.sector store result score #read1 sab.var run data get entity @s data.sector
execute if score #read1 sab.var matches 0.. unless score #sector sab.var = #read1 sab.var run data modify storage sa_bots:waypoint sector_neighbors prepend from entity @s data.sector