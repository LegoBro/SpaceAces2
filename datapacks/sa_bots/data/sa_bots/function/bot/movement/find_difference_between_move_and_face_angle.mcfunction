#executed by bot entity


#this is usful for determining whether the bot can sprint or do the swimming animation in water

#find angle difference
execute store result score @s sab.botAngleDiffMoveAndFace run data get entity @s Rotation[0]
scoreboard players operation @s sab.botAngleDiffMoveAndFace -= @s sab.botMovementYaw
scoreboard players add @s sab.botAngleDiffMoveAndFace 180
scoreboard players operation @s sab.botAngleDiffMoveAndFace %= #360 sab.var
scoreboard players remove @s sab.botAngleDiffMoveAndFace 180