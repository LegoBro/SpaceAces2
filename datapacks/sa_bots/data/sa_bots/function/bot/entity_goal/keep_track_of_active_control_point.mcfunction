#detect when active point changes
scoreboard players operation #test sab.var = activePoint Numbers
scoreboard players operation #test sab.var -= @s sab.botRememberActivePoint
execute unless score #test sab.var matches 0 run function sa_bots:bot/entity_goal/react_to_control_point_change

#sync up
scoreboard players operation @s sab.botRememberActivePoint = activePoint Numbers