

scoreboard players set heal_amount Numbers 0
execute as @e[type=#projectile:players,tag=hb,distance=..3] if score @s Team = #Class_Start Team run function class:4/soldier/burst_heal/heal
scoreboard players operation @s ultimate_charge += heal_amount Numbers
scoreboard players operation @s game_healing += heal_amount Numbers