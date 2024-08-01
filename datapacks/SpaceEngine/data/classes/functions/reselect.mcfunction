scoreboard players set @s reload 500000
scoreboard players set @s totalShots 0
scoreboard players set @s activate_second 0
scoreboard players set @s activate_third 0
scoreboard players operation @s health = @s maxHealth
effect give @s saturation 1 100
playsound minecraft:ui.button.click block @s ~ ~ ~ 1 2 0
xp set @s 0 levels
xp set @s 0
scoreboard players reset @s last_shot
tag @s add reselect
tag @s remove resistive
scoreboard players set @s displayHealth 9
execute if entity @s[team=blue] run function health:update_armor_blue
execute if entity @s[team=red] run function health:update_armor_red
