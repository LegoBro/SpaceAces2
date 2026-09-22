#rotate a random amount
scoreboard players operation #rotation sab.var = @s sab.botMovementYaw
execute store result score #random sab.var run random value 1..2
scoreboard players set #var sab.var 10
#rotate faster if facing into a wall
$execute rotated $(rotation) 0 unless block ^ ^.6 ^.6 #sa_bots:not_solid unless block ~ ~ ~ #minecraft:climbable run scoreboard players operation #var sab.var *= #5 sab.var
execute if score #random sab.var matches 1 run scoreboard players operation #rotation sab.var += #var sab.var
execute if score #random sab.var matches 2 run scoreboard players operation #rotation sab.var -= #var sab.var
#do a 180 if we're about to jump off a cliff (only for first 7 seconds of roaming)
$execute if score @s sab.botRoamTime matches ..140 rotated $(rotation) 0 positioned ^ ^ ^.8 if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid if block ~ ~-3 ~ #sa_bots:not_solid run scoreboard players add #rotation sab.var 180

#store new rotation
scoreboard players operation #rotation sab.var %= #360 sab.var
scoreboard players operation @s sab.botMovementYaw = #rotation sab.var