scoreboard players set @s Class 2
tellraw @p {"text":"\nSelected Class Soldier","color":"dark_gray","bold":true,"extra":[{"text":"\na perfectly balanced loadout\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"surge_rifle"},{"text":"\n","type":"text"},{"translate":"plasma_grenade"},{"text":"\n","type":"text"},{"translate":"burst_heal"},{"text":"\n","type":"text"},{"translate":"prepared"}],"type":"text"}

scoreboard players operation @s maxHealth = class.soldier.health Numbers
attribute @s movement_speed modifier remove class
attribute @s movement_speed modifier add class .10 add_multiplied_base

return 1