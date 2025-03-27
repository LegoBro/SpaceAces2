scoreboard players set @s Class 11
#tellraw @p {"text":"\nSelected Class Infiltraitor","color":"dark_gray","bold":true,"extra":[{"text":"\na loadout focused on hiding behind enemy lines\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"plasma_pistol"},{"text":"\n","type":"text"},{"translate":"cloak"},{"text":"\n","type":"text"},{"translate":"jammer"},{"text":"\n","type":"text"},{"translate":"recloak"}],"type":"text"}


scoreboard players operation @s maxHealth = class.infiltraitor.health Numbers
attribute @s movement_speed modifier remove class
attribute @s movement_speed modifier add class .25 add_multiplied_base
return 1