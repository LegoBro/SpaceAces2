## Spawn Attempt
execute if score @s weather.density matches 0 run return run function weather:cloud/spawn
$execute store result score #random weather.density run random value 0..$(density)
execute if score #random weather.density matches 0 run return run function weather:cloud/spawn

# Failure = wait for next cloud
scoreboard players set @s weather.timer 0
scoreboard players operation @s weather.timer -= @s weather.lifespan