

scoreboard players set heal_amount Numbers 0
execute as @a[distance=..3] if score @s Team = #Class_Start Team run function class:4/soldier/burst_heal/heal
scoreboard players operation @s ultimate_charge += heal_amount Numbers
scoreboard players operation @s game_healing += heal_amount Numbers