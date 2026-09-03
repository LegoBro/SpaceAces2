#executed when we are targeting a waypoint


#the bot's data.move_targets[0] should already be set!

#use scores! way more efficient than entity nbt for ticking logic
execute store result score @s sab.botMoveTargetX run data get entity @s data.move_targets[0].x 10
execute store result score @s sab.botMoveTargetY run data get entity @s data.move_targets[0].y 10
execute store result score @s sab.botMoveTargetZ run data get entity @s data.move_targets[0].z 10

#reset best distance on each axis
scoreboard players set @s sab.botTimeSinceProgress 0
scoreboard players set @s sab.botBestDistanceToTargetX 2147483647
scoreboard players set @s sab.botBestDistanceToTargetY 2147483647
scoreboard players set @s sab.botBestDistanceToTargetZ 2147483647

#figure out if our dx,dz to target is positive or negative
scoreboard players set @s sab.botWaypointApproachX 1
scoreboard players set @s sab.botWaypointApproachZ 1
execute if score @s sab.botMoveLastTickX < @s sab.botMoveTargetX run scoreboard players set @s sab.botWaypointApproachX -1
execute if score @s sab.botMoveLastTickZ < @s sab.botMoveTargetZ run scoreboard players set @s sab.botWaypointApproachZ -1