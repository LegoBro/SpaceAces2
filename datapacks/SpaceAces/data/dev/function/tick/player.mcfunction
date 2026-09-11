## Executes as player 
execute if entity @n[type=marker,distance=..15] run data modify storage dev:helper color set value "1.000,1.000,1.000"
execute if entity @n[type=marker,distance=..15] run function dev:helper/visualize

execute if score @s dev matches 0.. run function dev:menu/dict
scoreboard players enable @s dev