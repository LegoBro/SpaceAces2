## Enables Payload, disabled by dev:disable
give @s zombie_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["dev.gamemode.setback.minus_1"]},custom_name={color:"#195a79","italic":false,"text":"Point -1"}] 1
give @s sheep_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,data:{gamemode:{setback:{point:0,size_x:3,size_z:3}}},Tags:["gamemode.setback.point","gamemode.setback.point"]},custom_name={color:"#afafaf","italic":false,"text":"Spawn Capture Point"}] 1
give @s witch_spawn_egg[entity_data={id:"minecraft:marker",CustomNameVisible:1b,Tags:["dev.gamemode.setback.plus_1"]},custom_name={color:"#63102c","italic":false,"text":"Point +1"}] 1

function dev:get/marker_killer