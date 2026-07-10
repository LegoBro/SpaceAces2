execute if entity @s[team=blue] run effect give @e[distance=..8,scores={health=..50},team=red] minecraft:glowing 5 0 true
execute if entity @s[team=red] run effect give @e[distance=..8,scores={health=..50},team=blue] minecraft:glowing 5 0 true

return 1