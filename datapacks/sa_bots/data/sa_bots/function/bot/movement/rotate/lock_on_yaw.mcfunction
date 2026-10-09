execute store result storage sa_bots:generic yaw double 0.01 run scoreboard players get @s sab.botTargetAngleYaw100
execute if score @s sab.botForceAngleTime matches 1.. store result storage sa_bots:generic yaw double 0.01 run scoreboard players get @s sab.botForceAngleYaw100
function sa_bots:bot/movement/rotate/lock_on_yaw_macro with storage sa_bots:generic