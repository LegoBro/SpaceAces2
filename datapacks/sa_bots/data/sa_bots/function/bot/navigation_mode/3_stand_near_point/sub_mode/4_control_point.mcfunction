#executed by bot entity every tick while doing a specific sub-behavior for navigation mode 3


#count how many players on our team are on the point (including us)
scoreboard players operation #team sab.var = @s Team
scoreboard players set #count sab.var 0
execute as @e[type=#projectile:players,tag=sab.activePlayer,distance=..10] if score @s Team = #team sab.var run scoreboard players add #count sab.var 1

#don't get bored if we're the only person on the point and we're not in combat
execute if score #count sab.var matches ..1 if entity @s[scores={sab.botTimeSinceCombat=70..}] run scoreboard players set @s sab.botNavigationBoredom 0
execute if score #count sab.var matches ..2 if entity @s[scores={sab.botGoal=1,sab.botTimeSinceCombat=70..}] run scoreboard players set @s sab.botNavigationBoredom 0

#get bored faster on low health
execute if score @s displayHealth matches ..50 run scoreboard players add @s sab.botNavigationBoredom 1

#get bored faster if there's a ton of people here
execute if score #count sab.var matches 5.. run scoreboard players add @s sab.botNavigationBoredom 1

#get bored quickly if very unconfident
execute if entity @s[scores={sab.botConfidence=..-1}] run scoreboard players add @s sab.botNavigationBoredom 3


#get bored instantly if the active point moved
execute unless entity @e[type=marker,tag=gamemode.setback.active_point,distance=..12] run scoreboard players set @s sab.botNavigationBoredom 999