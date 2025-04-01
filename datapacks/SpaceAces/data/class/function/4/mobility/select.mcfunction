scoreboard players set @s Class 8
#tellraw @p {"text":"\nSelected Class Mobility","color":"dark_gray","bold":true,"extra":[{"text":"\na loadout based on vertical movement\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"unstable_surge_rifle"},{"text":"\n","type":"text"},{"translate":"warp"},{"text":"\n","type":"text"},{"translate":"flash_grenade"},{"text":"\n","type":"text"},{"translate":"power_pants"}],"type":"text"}
scoreboard players operation @s maxHealth = class.mobility.health Numbers

attribute @s movement_speed modifier remove class
attribute @s movement_speed modifier add class .20 add_multiplied_base

return 1