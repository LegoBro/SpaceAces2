#executed by a bot entity


#remember what the target's position was
scoreboard players operation @s sab.botObserveTargetX = #observe_x sab.var
scoreboard players operation @s sab.botObserveTargetZ = #observe_z sab.var

#we also use a second variable for more persistent memory of where the target was
scoreboard players operation @s sab.botTargetLastSeenX = #observe_x sab.var
scoreboard players operation @s sab.botTargetLastSeenY = #observe_y sab.var
scoreboard players operation @s sab.botTargetLastSeenZ = #observe_z sab.var