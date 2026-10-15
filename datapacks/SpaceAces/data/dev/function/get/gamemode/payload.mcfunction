## Enables Payload, disabled by dev:disable
give @s tropical_fish_spawn_egg[entity_data={id:"minecraft:marker",Tags:["dev.gamemode.payload.path_spawn","dev.spawn"]},item_name={color:"#cc952f","text":"Spawn Payload Path"}] 1
give @s creeper_spawn_egg[entity_data={id:"minecraft:marker",Tags:["dev.gamemode.payload.connector_spawn","dev.spawn"]},item_name={color:"#2fcc49","text":"Path Connector"}] 1

give @s breeze_spawn_egg[entity_data={id:"minecraft:marker",Tags:["dev.gamemode.payload.checkpoint_spawn","dev.spawn"]},item_name={color:"#7755af","text":"Payload Checkpoint"}] 1

#give @s ghast_spawn_egg[entity_data={id:"minecraft:marker",Tags:["payload_spawn_point_spawn"]},item_name={color:"#e9e9e9","text":"Spawn Payload Spawnpoint"}] 1

function dev:get/marker_killer