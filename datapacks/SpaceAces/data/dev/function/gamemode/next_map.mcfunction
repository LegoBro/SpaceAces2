

# copy map
data modify storage dev:map map set from storage dev:maps maps[0]

$execute if data storage dev:map {map:{gamemodes:["$(name)"]}} run data modify storage dev:gamemode gamemodes[0].maps append from storage dev:map map.name
$execute if data storage dev:map {map:{gamemodes:["$(name)"]}} run tellraw @s [{text:"  - Adding map:",color:aqua},{"interpret":false,"nbt":"map.name","storage":"dev:map"}]

# Remove checked gamemode, and work on next one
data remove storage dev:maps maps[0]
execute if data storage dev:maps maps[0] run return run function dev:gamemode/next_map with storage dev:gamemode gamemodes[0]
