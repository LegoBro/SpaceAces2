execute if entity @s[team=blue] run effect give @e[team=blue,distance=..5] fire_resistance 5 0 true
execute if entity @s[team=red] run effect give @e[team=red,distance=..5] fire_resistance 5 0 true
playsound block.fire.extinguish player @a ~ ~ ~ 1.0 2.0
