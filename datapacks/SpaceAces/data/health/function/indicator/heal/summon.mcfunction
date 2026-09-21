## Summons the healing indicator
scoreboard players operation @s healing += #healing healing
scoreboard players operation @s owner = #Class_Start id
scoreboard players set @s sab.lifespan 20
tag @n[tag=heal_indicator,tag=new,distance=..5] remove new