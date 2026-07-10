execute if entity @s[team=blue] run effect give @e[distance=..5,team=blue] minecraft:fire_resistance 5 0 true
execute if entity @s[team=red] run effect give @e[distance=..5,team=red] minecraft:fire_resistance 5 0 true
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1.0 2.0

return 1