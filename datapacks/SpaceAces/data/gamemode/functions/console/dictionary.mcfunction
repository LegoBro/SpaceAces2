# Links console trigger to different functionalities (dynamic)
execute if score @s console matches 1 run function gamemode:console/1
execute if score @s console matches 2 run function gamemode:console/2
execute if score @s console matches 3 run function gamemode:console/3
execute if score @s console matches 4 run function gamemode:console/4
execute if score @s console matches 5 run function gamemode:console/5
execute if score @s console matches 6 run function gamemode:console/6

execute if score @s console matches 210 run function gamemode:console/210
execute if score @s console matches 220 run function gamemode:console/220

execute if score @s console matches 310 run function gamemode:console/310
execute if score @s console matches 320 run function gamemode:console/320

execute if score @s console matches 311 run function gamemode:console/311
execute if score @s console matches 321 run function gamemode:console/321

execute if score @s console matches 410 run function gamemode:console/410
execute if score @s console matches 420 run function gamemode:console/420
scoreboard players reset @s console