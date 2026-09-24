#executed by bot entity
#executed facing entity f-0-0-0-1 feet rotated ~ 0 positioned ^ ^ ^.6


#determine if left and right are valid
execute store result score #test1 sab.var run execute if block ^-1 ^ ^ #sa_bots:not_solid
execute store result score #test2 sab.var run execute if block ^1 ^ ^ #sa_bots:not_solid

#go left
execute if score #test1 sab.var matches 1 run scoreboard players set @s sab.botMoveRotationOffset 90

#go right
execute if score #test2 sab.var matches 1 run scoreboard players set @s sab.botMoveRotationOffset -90

#go left or right
scoreboard players set #random sab.var 0
execute if score #test1 sab.var matches 1 if score #test2 sab.var matches 1 \
    store result score #random sab.var run random value 1..2
execute if score #random sab.var matches 1 run scoreboard players set @s sab.botMoveRotationOffset 90
execute if score #random sab.var matches 2 run scoreboard players set @s sab.botMoveRotationOffset -90


#if something happened, set rotation offset timer
execute unless score @s sab.botMoveRotationOffset matches 0 run scoreboard players set @s sab.botMoveRotationOffsetTime 10
execute unless score @s sab.botMoveRotationOffset matches 0 if entity @s[tag=!sab.botTriedStrafing] run scoreboard players set @s sab.botTimeSinceProgress -5
execute unless score @s sab.botMoveRotationOffset matches 0 if entity @s[tag=!sab.botTriedStrafing] run tag @s add sab.botTriedStrafing