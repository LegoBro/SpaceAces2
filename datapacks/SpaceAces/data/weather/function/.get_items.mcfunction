## Get weather items
## Gives the player marker entities so they can place them in new maps.
give @s ghast_spawn_egg[item_model=white_stained_glass,entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["weather.cloud_emitter","weather.spawn"]},custom_name={color:"#ffffff","italic":false,"text":"Spawn Cloud Emitter"}] 1



give @s ghast_spawn_egg[item_model=green_stained_glass,entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["weather.cloud_emitter.speed_up"]},custom_name={color:"#73ff51","italic":false,"text":"+ Cloud Emitter Speed "}] 1
give @s ghast_spawn_egg[item_model=red_stained_glass,entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["weather.cloud_emitter.speed_down"]},custom_name={color:"#f84a4a","italic":false,"text":"- Cloud Emitter Speed"}] 1

give @s ghast_spawn_egg[item_model=gold_block,entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["weather.cloud_emitter.size_up"]},custom_name={color:"#73ff51","italic":false,"text":"+ Cloud Emitter Size "}] 1
give @s ghast_spawn_egg[item_model=gold_nugget,entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["weather.cloud_emitter.size_down"]},custom_name={color:"#f84a4a","italic":false,"text":"- Cloud Emitter Size"}] 1

give @s ghast_spawn_egg[item_model=iron_ingot,entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["weather.cloud_emitter.density_up"]},custom_name={color:"#73ff51","italic":false,"text":"+ Cloud Emitter Density "}] 1
give @s ghast_spawn_egg[item_model=heavy_core,entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["weather.cloud_emitter.density_down"]},custom_name={color:"#f84a4a","italic":false,"text":"- Cloud Emitter Density"}] 1

give @s ghast_spawn_egg[item_model=bucket,entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["weather.cloud_emitter.copy"]},custom_name={color:"#73ff51","italic":false,"text":"Copy Cloud Emitter Stats"}] 1
give @s ghast_spawn_egg[item_model=milk_bucket,entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["weather.cloud_emitter.paste"]},custom_name={color:"#f84a4a","italic":false,"text":"Paste Cloud Emitter Stats"}] 1

function dev:get/marker_killer