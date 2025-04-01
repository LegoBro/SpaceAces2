## Energy
execute if entity @s[team=blue] run effect give @a[distance=..5,scores={energy=..11},team=blue] minecraft:saturation 1 0 true
execute if entity @s[team=red] run effect give @a[distance=..5,scores={energy=..11},team=red] minecraft:saturation 1 0 true

return 1