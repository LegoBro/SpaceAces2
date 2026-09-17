## Summons the damage indicator
scoreboard players operation @s damage += #damage damage
scoreboard players operation @s owner = #Class_Start id
scoreboard players set @s sab.lifespan 10
tag @n[tag=damage_indicator,tag=new,distance=..5] remove new