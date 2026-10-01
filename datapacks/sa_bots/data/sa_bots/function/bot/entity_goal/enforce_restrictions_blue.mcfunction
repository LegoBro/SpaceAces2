#push
scoreboard players operation #var sab.var = #playerCountBlue sab.var
scoreboard players operation #var sab.var *= #bot_percent_quota_push_blue sab.var
scoreboard players operation #var sab.var /= #100 sab.var
#var is minimum number of people that should be pushing

#force self to push if we don't meet the minimum
execute if score #playerCountBluePush sab.var < #var sab.var run scoreboard players set @s sab.botGoal 1



#defend
scoreboard players operation #var sab.var = #playerCountBlue sab.var
scoreboard players operation #var sab.var *= #bot_percent_quota_defend_blue sab.var
scoreboard players operation #var sab.var /= #100 sab.var
#var is minimum number of people that should be pushing

#force self to defend if we don't meet the minimum
execute if score #playerCountBlueDefend sab.var < #var sab.var run scoreboard players set @s sab.botGoal 2
