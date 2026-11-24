## Enables Payload, disabled by dev:disable
give @s tropical_fish_spawn_egg[item_model="dev/payload/path",entity_data={id:"minecraft:marker",Tags:["dev.gamemode.payload.path_spawn","dev.spawn"]},item_name={color:"#cc952f","translate":"dev.gamemode.payload.path"}] 1
give @s creeper_spawn_egg[item_model="dev/payload/connector",entity_data={id:"minecraft:marker",Tags:["dev.gamemode.payload.connector_spawn","dev.spawn"]},item_name={color:"#2fcc49","translate":"dev.gamemode.payload.connector"}] 1

give @s breeze_spawn_egg[item_model="dev/payload/checkpoint",entity_data={id:"minecraft:marker",Tags:["dev.gamemode.payload.checkpoint_spawn","dev.spawn"]},item_name={color:"#7755af","translate":"dev.gamemode.payload.checkpoint"}] 1

#give @s ghast_spawn_egg[entity_data={id:"minecraft:marker",Tags:["payload_spawn_point_spawn"]},item_name={color:"#e9e9e9","text":"Spawn Payload Spawnpoint"}] 1

function dev:get/marker_killer