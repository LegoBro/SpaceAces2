## Player has started initial training (tutorial)
tag @s[tag=newb] remove newb
tag @s[tag=!trainee] add trainee
execute if block 10017 119 19 lime_stained_glass unless entity @e[type=zombie,tag=training_0_0] unless entity @p[tag=training_1] run fill 10017 119 19 10019 121 19 air destroy
execute if block 10030 119 27 air run fill 10030 121 27 10032 119 27 lime_stained_glass
execute if block ~ ~-2 ~ diamond_block run tag @s add training_1
