scoreboard players set @s Class 3
#tellraw @p {"text":"\nSelected Class Sniper","color":"dark_gray","bold":true,"extra":[{"text":"\na long-ranged loadout\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"star_sniper"},{"text":"\n","type":"text"},{"translate":"vis_mine"},{"text":"\n","type":"text"},{"translate":"jump"},{"text":"\n","type":"text"},{"translate":"distance"}],"type":"text"}

scoreboard players operation @s maxHealth = class.sniper.health Numbers
attribute @s movement_speed modifier remove class
#attribute @s movement_speed modifier add class 0 add_multiplied_base

return 1