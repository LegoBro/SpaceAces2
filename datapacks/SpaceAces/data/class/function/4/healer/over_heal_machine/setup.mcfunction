## Sets up overheal machine stats

scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s Team = #Class_Start Team

scoreboard players operation @s health = class.healer.ultimate.health Numbers

tag @s remove new