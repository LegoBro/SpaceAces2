execute if entity @s[team=blue] run scoreboard players add @a[distance=..3,team=blue] healing 2
execute if entity @s[team=red] run scoreboard players add @a[distance=..3,team=red] healing 2
execute if entity @s[team=blue] at @a[distance=..3,team=blue] run scoreboard players add @s game_healing 2
execute if entity @s[team=red] at @a[distance=..3,team=red] run scoreboard players add @s game_healing 2

return 1