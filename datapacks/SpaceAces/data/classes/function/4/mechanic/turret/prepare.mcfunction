scoreboard players add @s[tag=!prepared] i 1
execute if entity @s[tag=!prepared] at @s run tp @s ~ ~.01 ~
tag @s[tag=!prepared,scores={i=101..}] add prepared
scoreboard players reset @s[tag=prepared,scores={i=101..}] i
scoreboard players add @s[tag=prepared] reload 0

return 1