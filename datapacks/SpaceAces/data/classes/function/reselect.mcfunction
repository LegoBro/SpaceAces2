execute if score @s Class matches 1 run function classes:scout/select
execute if score @s Class matches 2 run function classes:soldier/select
execute if score @s Class matches 3 run function classes:sniper/select
execute if score @s Class matches 4 run function classes:bomber/select
execute if score @s Class matches 5 run function classes:scout/select
execute if score @s Class matches 6 run function classes:scout/select
execute if score @s Class matches 7 run function classes:scout/select
execute if score @s Class matches 8 run function classes:mobility/select
execute if score @s Class matches 9 run function classes:scout/select
execute if score @s Class matches 10 run function classes:scout/select
execute if score @s Class matches 11 run function classes:scout/select
execute if score @s Class matches 12 run function classes:scout/select
execute if score @s Class matches 13 run function classes:scout/select
execute if score @s Class matches 14 run function classes:scout/select
execute if score @s Class matches 15 run function classes:scout/select

scoreboard players set @s reload 500000
scoreboard players set @s totalShots 0
scoreboard players set @s ability.1.cooldown 0
scoreboard players set @s ability.2.cooldown 0
scoreboard players operation @s health = @s maxHealth
effect give @s minecraft:saturation 1 100
playsound minecraft:ui.button.click block @s ~ ~ ~ 1 2 0
xp set @s 0 levels
xp set @s 0
scoreboard players reset @s last_shot
tag @s add reselect
tag @s remove resistive
scoreboard players set @s displayHealth 9
execute if entity @s[team=blue] run function health:update_armor_blue
execute if entity @s[team=red] run function health:update_armor_red

return 1