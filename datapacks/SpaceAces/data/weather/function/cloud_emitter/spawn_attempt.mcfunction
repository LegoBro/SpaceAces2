## Spawn Attempt
function weather:cloud/spawn
scoreboard players remove #density Numbers 1

execute if score #density Numbers matches 1.. run return run function weather:cloud_emitter/spawn_attempt

#$execute store result score #random weather.density run random value 0..$(density)



#execute if score #random weather.density matches 0 run return run function weather:cloud/spawn

# Failure = wait for next cloud
#scoreboard players set @s weather.timer 0
#scoreboard players operation @s weather.timer -= @s weather.lifespan