#executed by bot


#allowed if we've been in "roam" mode for 7 seconds
execute if entity @s[scores={sab.botNavigationMode=0,sab.botRoamTime=140..}] run return 1
#"roam" is not allowed otherwise
execute if score @s sab.botNavigationMode matches 0 run return 0


#allowed if more than 7 blocks away on either axis
execute unless score @s sab.botBestDistanceToTargetX matches -70..70 run return 1
execute unless score @s sab.botBestDistanceToTargetZ matches -70..70 run return 1

#allowed if more than 5 blocks away on both x and z
execute unless score @s sab.botBestDistanceToTargetX matches -50..50 unless score @s sab.botBestDistanceToTargetZ matches -50..50 run return 1

#not allowed if 0 conditions passed
return 0