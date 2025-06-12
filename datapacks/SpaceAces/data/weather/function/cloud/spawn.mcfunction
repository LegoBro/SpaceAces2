## Spawns cloud, based on size, speed and density

## Size:

# 4
execute if score @s weather.size matches 0 run summon item_display ~ ~0.1 ~-1.9 {Tags:["skybox","arena","arena.ruins","arena.cloud","weather.cloud","weather.spawn"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/ruins/sky_poison"}},view_range:10f,shadow_radius:0f,shadow_strength:0f,billboard:"fixed",item_display:"ground",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},teleport_duration:1}

# 8
execute if score @s weather.size matches 1 run summon item_display ~ ~0.1 ~-3.9 {Tags:["skybox","arena","arena.ruins","arena.cloud","weather.cloud","weather.spawn"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/ruins/sky_poison"}},view_range:10f,shadow_radius:0f,shadow_strength:0f,billboard:"fixed",item_display:"ground",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},teleport_duration:1}
#execute if score @s weather.size matches 1 run say test

# 16
execute if score @s weather.size matches 2 run summon item_display ~ ~0.1 ~-7.9 {Tags:["skybox","arena","arena.ruins","arena.cloud","weather.cloud","weather.spawn"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/ruins/sky_poison"}},view_range:10f,shadow_radius:0f,shadow_strength:0f,billboard:"fixed",item_display:"ground",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[16f,16f,16f]},teleport_duration:1}

# 32
execute if score @s weather.size matches 3 run summon item_display ~ ~0.1 ~-15.9 {Tags:["skybox","arena","arena.ruins","arena.cloud","weather.cloud","weather.spawn"],item:{id:"minecraft:green_stained_glass",count:1,components:{"minecraft:item_model":"arena/ruins/sky_poison"}},view_range:10f,shadow_radius:0f,shadow_strength:0f,billboard:"fixed",item_display:"ground",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[32f,32f,32f]},teleport_duration:1}

scoreboard players set @s weather.timer 0
scoreboard players operation @s weather.timer -= @s weather.lifespan

## Copy emitter details...
scoreboard players operation #cloud weather.speed = @s weather.speed
scoreboard players operation #cloud weather.size = @s weather.size

execute as @n[type=item_display,tag=weather.cloud,tag=weather.spawn] at @s run function weather:cloud/calculate