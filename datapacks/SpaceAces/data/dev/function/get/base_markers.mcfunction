## Gives the player marker entities so they can place them in new maps.
give @s pig_spawn_egg[item_model="dev/weak_health_pack",entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["weak_health_pack"]},custom_name={color:"#FB85FF","italic":false,"translate":"dev.weak_health_pack"}] 1
give @s axolotl_spawn_egg[item_model="dev/strong_health_pack",entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["strong_health_pack"]},custom_name={color:"#934f96","italic":false,"translate":"dev.strong_health_pack"}] 1

give @s allay_spawn_egg[item_model="dev/blue_spawn",entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["blue_spawn_point","gamemode.spawnpoint"],data:{progress:0}},custom_name={color:"#0400ff","italic":false,"translate":"dev.blue_spawn"}] 1
give @s strider_spawn_egg[item_model="dev/red_spawn",entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["red_spawn_point","gamemode.spawnpoint"],data:{progress:0}},custom_name={color:"#ff0000","italic":false,"translate":"dev.red_spawn"}] 1
give @s ghast_spawn_egg[item_model="dev/general_spawn",entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["general_spawn_point","gamemode.spawnpoint"],data:{progress:0}},custom_name={color:"#ffffff","italic":false,"translate":"dev.general_spawn"}] 1

give @s ghast_spawn_egg[item_model="dev/spawnpoint_plus_one",entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["dev.spawnpoint_progress_plus"]},custom_name={color:"#ffffff","italic":false,"translate":"dev.spawnpoint_plus_one"}] 1
give @s ghast_spawn_egg[item_model="dev/spawnpoint_minus_one",entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["dev.spawnpoint_progress_minus"]},custom_name={color:"#ffffff","italic":false,"translate":"dev.spawnpoint_minus_one"}] 1

function dev:get/marker_killer