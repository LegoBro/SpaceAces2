execute store result storage sa_bots:generic pitch double 0.01 run scoreboard players get @s sab.botTargetAnglePitch100
execute if score @s sab.botForceAngleTime matches 1.. store result storage sa_bots:generic pitch double 0.01 run scoreboard players get @s sab.botForceAnglePitch100
function sa_bots:bot/movement/rotate/lock_on_pitch_macro with storage sa_bots:generic