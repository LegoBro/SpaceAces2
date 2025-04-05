item replace entity @s container.0 with minecraft:paper[item_model="class/brawler/sword_throw"]
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
tag @s remove new
return 1