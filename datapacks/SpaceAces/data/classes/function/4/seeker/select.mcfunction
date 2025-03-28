scoreboard players set @s Class 13
#tellraw @p {"text":"\nSelected Class Seeker","color":"dark_gray","bold":true,"extra":[{"text":"\na loadout focused on seeking single enemies\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"plasma_spreader"},{"text":"\n","type":"text"},{"translate":"poison_jab"},{"text":"\n","type":"text"},{"translate":"slow_field"},{"text":"\n","type":"text"},{"translate":"weak_glow"}],"type":"text"}


scoreboard players operation @s maxHealth = class.seeker.health Numbers
attribute @s movement_speed modifier remove class
attribute @s movement_speed modifier add class .30 add_multiplied_base

return 1