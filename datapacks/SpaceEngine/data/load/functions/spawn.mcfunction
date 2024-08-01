#Runs when as a new player when they join/rejoin/remove from spectating
tp @s 8 200 8
scoreboard players set @s rightClick 0
scoreboard players set @s shoot 0
scoreboard players set @s reload 500000
scoreboard players set @s totalShots 0
scoreboard players set @s Class 2
scoreboard players set @s activate_second 0
scoreboard players set @s activate_third 0
scoreboard players set @s crouching 0
scoreboard players set @s health 150
scoreboard players set @s displayHealth 10
execute unless score @s id matches 0.. run tag @s add newb
execute unless score @s id matches 0.. run scoreboard players add Player_Amount Numbers 1
execute unless score @s id matches 0.. run scoreboard players operation @s id = Player_Amount Numbers
team join lobby @s
gamemode adventure
tag @s add spawned
tag @s add hb_player
tag @s remove trainee
tag @s remove awaiting
tag @s remove in_game
tag @s remove ready
clear @s
tag @s remove resistive
attribute @s minecraft:generic.max_health base set 20
xp set @s 0 levels
xp set @s 0 points
title @s actionbar ""
title @s subtitle ""
gamemode adventure @s[gamemode=!adventure]

tag @a remove winner
tag @s remove stats
