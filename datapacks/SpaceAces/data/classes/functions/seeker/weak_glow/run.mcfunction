execute if entity @s[team=blue] run effect give @e[team=red,distance=..8,scores={health=..50}] glowing 5 0 true
execute if entity @s[team=red] run effect give @e[team=blue,distance=..8,scores={health=..50}] glowing 5 0 true
