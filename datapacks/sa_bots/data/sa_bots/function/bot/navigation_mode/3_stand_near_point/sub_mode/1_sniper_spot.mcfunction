#executed by bot entity every tick while doing a specific sub-behavior for navigation mode 3


#if sniping, we will exit this mode if the enemy we're shooting at gets within 14m
execute if entity @s[scores={sab.botTargetEntityID=1..,sab.botTargetEntityDistance=..14}] run function sa_bots:bot/navigation_mode/3_stand_near_point/try_to_get_unstuck

#don't get bored if we have people to shoot at
execute if score @s sab.botTimeSinceCombat matches ..20 run scoreboard players set @s sab.botNavigationBoredom 0

#don't get bored during initial delay on object checks
execute if score @s sab.botObjectCheckTime matches 1.. run scoreboard players set @s sab.botNavigationBoredom 0