## Flash grenade landing
playsound entity.firework_rocket.blast hostile @a
particle flash ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=red] run effect give @a[distance=..5,team=blue] blindness 5 0 true
execute if entity @s[tag=blue] run effect give @a[distance=..5,team=red] blindness 5 0 true
kill @s
