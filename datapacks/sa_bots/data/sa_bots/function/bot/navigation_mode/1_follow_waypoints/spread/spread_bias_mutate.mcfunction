#executed by a bot


#x and z bias should be in the range -10..10

#0 = go at waypoints dead-center
#-10 = go at waypoints at the lower possible coordinate
#10 = go at waypoints at the highest possible coordinate

#mutate x
execute store result score #random sab.var run random value -2..2
scoreboard players operation @s sab.botSpreadBiasX += #random sab.var
execute if score @s sab.botSpreadBiasX matches ..-11 run scoreboard players set @s sab.botSpreadBiasX -10
execute if score @s sab.botSpreadBiasX matches 11.. run scoreboard players set @s sab.botSpreadBiasX 10

#mutate z
execute store result score #random sab.var run random value -2..2
scoreboard players operation @s sab.botSpreadBiasZ += #random sab.var
execute if score @s sab.botSpreadBiasZ matches ..-11 run scoreboard players set @s sab.botSpreadBiasZ -10
execute if score @s sab.botSpreadBiasZ matches 11.. run scoreboard players set @s sab.botSpreadBiasZ 10

#small chance we'll pick a completely new bias at random
execute store result score #random sab.var run random value 1..10
execute if score #random sab.var matches 10 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/spread_bias_randomize