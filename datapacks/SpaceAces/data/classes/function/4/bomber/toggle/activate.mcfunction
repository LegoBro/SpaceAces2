
scoreboard players operation @s ability.2.cooldown = class.bomber.2.cooldown Numbers
scoreboard players reset @s rightClick

scoreboard players set @s reload 2

tag @s[tag=class.bomber.sticky_mode] add class.bomber.toggle
tag @s remove class.bomber.sticky_mode
tag @s[tag=!class.bomber.toggle] add class.bomber.sticky_mode
tag @s remove class.bomber.toggle

return 1