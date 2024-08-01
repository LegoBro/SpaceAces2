execute if entity @s[team=blue] run scoreboard players add @a[team=blue,distance=..3] healing 2
execute if entity @s[team=red] run scoreboard players add @a[team=red,distance=..3] healing 2
execute if entity @s[team=blue] at @a[team=blue,distance=..3] run scoreboard players add @s game_healing 2
execute if entity @s[team=red] at @a[team=red,distance=..3] run scoreboard players add @s game_healing 2
