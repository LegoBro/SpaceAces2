scoreboard players set @s SelectedItem 1

tag @s add sab.botAimAtOwnFeet
scoreboard players set @s sab.botIgnoreAimTime 3

#on shoot cooldown? wait a moment
execute if score @s shoot matches 1.. run return 0
#=====

#not aiming down yet? wait a moment
execute store result score #pitch sab.var run data get entity @s Rotation[1] 100
execute if score #pitch sab.var matches ..7800 run return 0
#=====

scoreboard players set @s sab.botRightClick10Hz 1
