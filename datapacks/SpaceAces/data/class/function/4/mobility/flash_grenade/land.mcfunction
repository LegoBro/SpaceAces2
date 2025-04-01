## Flash grenade landing
playsound minecraft:entity.firework_rocket.blast hostile @a
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
scoreboard players operation #Team Team = @s Team
execute as @a[distance=..3] unless score @s Team = #Team Team run effect give @s darkness 2 0 true
kill @s

return 1