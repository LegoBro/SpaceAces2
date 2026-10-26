## Resets all spawnpoints
scoreboard players reset * gamemode.spawnpoint.progress


execute as @e[type=marker,tag=gamemode.spawnpoint] store result score @s gamemode.spawnpoint.progress run data get entity @s data.progress

execute unless entity @p[tag=dev.spawnpoints] run return 0

# Dev feedback
execute store result score #dev.gamemode.spawnpoints.total_in_map Numbers if entity @e[type=marker,tag=gamemode.spawnpoint]

execute store result score #dev.gamemode.spawnpoints.blue_in_map Numbers if entity @e[type=marker,tag=gamemode.spawnpoint,tag=blue_spawn_point]
execute store result score #dev.gamemode.spawnpoints.red_in_map Numbers if entity @e[type=marker,tag=gamemode.spawnpoint,tag=red_spawn_point]
execute store result score #dev.gamemode.spawnpoints.general_in_map Numbers if entity @e[type=marker,tag=gamemode.spawnpoint,tag=general_spawn_point]

tellraw @a[tag=dev.spawnpoints] [{text:"Spawnpoints in the current map: "},{score:{name:"#dev.gamemode.spawnpoints.total_in_map",objective:"Numbers"},color:yellow}," | ",{score:{name:"#dev.gamemode.spawnpoints.blue_in_map",objective:"Numbers"},color:blue}," ",{score:{name:"#dev.gamemode.spawnpoints.red_in_map",objective:"Numbers"},color:red}," ",{score:{name:"#dev.gamemode.spawnpoints.general_in_map",objective:"Numbers"},color:gray}]
