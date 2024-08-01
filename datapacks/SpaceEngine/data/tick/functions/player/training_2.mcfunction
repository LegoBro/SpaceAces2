## Player has started initial training (tutorial)
tag @s[tag=training_1] remove training_1
execute if block 10001 121 1 lime_stained_glass unless entity @e[type=zombie,tag=training_2_0] run fill 10001 121 1 9999 121 -1 air destroy
execute if block 10032 122 11 air run fill 10032 122 11 10034 124 11 lime_stained_glass

execute if block ~ ~-2 ~ structure_void run tag @s remove training_2
execute if block ~ ~-2 ~ structure_void run tag @s add trained
