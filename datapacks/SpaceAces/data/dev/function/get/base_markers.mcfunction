## Gives the player marker entities so they can place them in new maps.
give @s pig_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["weak_health_pack"]},custom_name='{"color":"#FB85FF","italic":false,"text":"Spawn Weak Health Pack"}'] 1
give @s axolotl_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["strong_health_pack"]},custom_name='{"color":"#934f96","italic":false,"text":"Spawn Strong Health Pack"}'] 1

give @s allay_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["blue_spawn_point"]},custom_name='{"color":"#0400ff","italic":false,"text":"Spawn Blue Spawn Point"}'] 1
give @s strider_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["red_spawn_point"]},custom_name='{"color":"#ff0000","italic":false,"text":"Spawn Red Spawn Point"}'] 1
give @s ghast_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["general_spawn_point"]},custom_name='{"color":"#ffffff","italic":false,"text":"Spawn General Spawn Point"}'] 1


function dev:get/marker_killer