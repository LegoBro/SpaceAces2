## Enables Payload, disabled by dev:disable
give @s tropical_fish_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["payload_path_spawn"]},custom_name={color:"#cc952f","italic":false,"text":"Spawn Payload Path"}] 1
give @s creeper_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["payload_increment","kill"]},custom_name={color:"#2fcc49","italic":false,"text":"Increment Payload"}] 1
give @s mooshroom_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["payload_decrement","kill"]},custom_name={color:"#cc2f2f","italic":false,"text":"Decrement Payload"}] 1

give @s breeze_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["payload_checkpoint","kill"]},custom_name={color:"#7755af","italic":false,"text":"Payload Checkpoint"}] 1

give @s ghast_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["payload_spawn_point_spawn"]},custom_name={color:"#e9e9e9","italic":false,"text":"Spawn Payload Spawnpoint"}] 1

function dev:get/marker_killer