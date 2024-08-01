execute if entity @e[distance=..32,team=blue,tag=!invis] run scoreboard players add @s i 1
execute if entity @s[tag=boss] if entity @e[distance=..32,team=blue,tag=!invis] run scoreboard players add @s i 4
execute as @s[type=skeleton,tag=ranged,tag=standard,scores={i=45..}] at @s run function enemies:standard
execute as @s[type=stray,tag=ranged,tag=explosive,scores={i=45..}] at @s run function enemies:explosive
