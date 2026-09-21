## Flash grenade landing
playsound minecraft:entity.firework_rocket.blast hostile @a
particle minecraft:flash{color:[0.133,1.000,0.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
scoreboard players operation #Team Team = @s Team
execute as @e[type=#projectile:players,tag=hb,distance=..3] unless score @s Team = #Team Team run scoreboard players operation @s blindness += class.mobility.2.blindness_length Numbers
kill @s

return 1