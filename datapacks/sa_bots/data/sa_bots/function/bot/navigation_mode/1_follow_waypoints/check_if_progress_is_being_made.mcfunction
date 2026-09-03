#get x,y,z distance to target
scoreboard players operation #dx sab.var = @s sab.botMoveLastTickX
scoreboard players operation #dy sab.var = @s sab.botMoveLastTickY
scoreboard players operation #dz sab.var = @s sab.botMoveLastTickZ
scoreboard players operation #dx sab.var -= @s sab.botMoveTargetX
scoreboard players operation #dy sab.var -= @s sab.botMoveTargetY
scoreboard players operation #dz sab.var -= @s sab.botMoveTargetZ

#track if we've reached the waypoint (passed coordinates on x and z)
#X
execute if score @s sab.botWaypointApproachX matches 1 if score #dx sab.var matches ..2 run scoreboard players set @s sab.botWaypointApproachX 0
execute if score @s sab.botWaypointApproachX matches -1 if score #dx sab.var matches -2.. run scoreboard players set @s sab.botWaypointApproachX 0
#z
execute if score @s sab.botWaypointApproachZ matches 1 if score #dz sab.var matches ..2 run scoreboard players set @s sab.botWaypointApproachZ 0
execute if score @s sab.botWaypointApproachZ matches -1 if score #dz sab.var matches -2.. run scoreboard players set @s sab.botWaypointApproachZ 0

#flip negative signs for absolute value
execute if score #dx sab.var matches ..-1 run scoreboard players operation #dx sab.var *= #-1 sab.var
execute if score #dy sab.var matches ..-1 run scoreboard players operation #dy sab.var *= #-1 sab.var
execute if score #dz sab.var matches ..-1 run scoreboard players operation #dz sab.var *= #-1 sab.var

#if any are better, that's a success
execute if score #dx sab.var < @s sab.botBestDistanceToTargetX run scoreboard players set @s sab.botTimeSinceProgress 0
execute if score #dy sab.var < @s sab.botBestDistanceToTargetY run scoreboard players set @s sab.botTimeSinceProgress 0
execute if score #dz sab.var < @s sab.botBestDistanceToTargetZ run scoreboard players set @s sab.botTimeSinceProgress 0

#record best x,y,z distance to target
execute if score #dx sab.var < @s sab.botBestDistanceToTargetX run scoreboard players operation @s sab.botBestDistanceToTargetX = #dx sab.var
execute if score #dy sab.var < @s sab.botBestDistanceToTargetY run scoreboard players operation @s sab.botBestDistanceToTargetY = #dy sab.var
execute if score #dz sab.var < @s sab.botBestDistanceToTargetZ run scoreboard players operation @s sab.botBestDistanceToTargetZ = #dz sab.var