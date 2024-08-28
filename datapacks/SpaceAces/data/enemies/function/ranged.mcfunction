execute if entity @e[distance=..32,tag=!invis,team=blue] run scoreboard players add @s i 1
execute if entity @s[tag=boss] if entity @e[distance=..32,tag=!invis,team=blue] run scoreboard players add @s i 4
execute if entity @s[type=minecraft:skeleton,tag=ranged,tag=standard,scores={i=45..}] at @s run function enemies:standard
execute if entity @s[type=minecraft:stray,tag=ranged,tag=explosive,scores={i=45..}] at @s run function enemies:explosive

return 1