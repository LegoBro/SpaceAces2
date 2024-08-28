## Flash grenade landing
playsound minecraft:entity.firework_rocket.blast hostile @a
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=red] run effect give @a[distance=..5,team=blue] minecraft:blindness 5 0 true
execute if entity @s[tag=blue] run effect give @a[distance=..5,team=red] minecraft:blindness 5 0 true
kill @s

return 1