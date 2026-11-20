#force angle
scoreboard players set @s sab.botForceAngleTime 10
scoreboard players set @s sab.botIgnoreAimTime 10

#random angle at 5hz
execute store result score @s sab.botForceAngleYaw100 run random value 0..35999
execute store result score @s sab.botForceAnglePitch100 run random value -100..100
