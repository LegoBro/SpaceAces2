tag @s add resistive
scoreboard players remove @s resist 1
tag @s[scores={resist=..0}] remove resistive
scoreboard players reset @s[scores={resist=..0}] resist
