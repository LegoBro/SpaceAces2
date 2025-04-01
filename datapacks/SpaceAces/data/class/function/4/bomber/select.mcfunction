scoreboard players set @s Class 4
#tellraw @p {"text":"\nSelected Class Bomber","color":"dark_gray","bold":true,"extra":[{"text":"\na very explosive loadout\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"plasma_grenade_launcher"},{"text":"\n","type":"text"},{"translate":"sticky_bomb"},{"text":"\n","type":"text"},{"translate":"detonator"},{"text":"\n","type":"text"},{"translate":"bomb_voyage"}],"type":"text"}

scoreboard players operation @s maxHealth = class.bomber.health Numbers
tag @s remove class.bomber.sticky_mode
attribute @s movement_speed modifier remove class
attribute @s movement_speed modifier add class 0 add_multiplied_base

return 1