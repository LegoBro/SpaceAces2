#executed by bot entity every tick while doing a specific sub-behavior for navigation mode 3


#don't get bored if we're healthy and have people to shoot at
execute if entity @s[scores={sab.botTimeSinceCombat=..20,displayHealth=66..}] run scoreboard players set @s sab.botNavigationBoredom 0

#don't get bored during initial delay on object checks when above 50% health
execute if entity @s[scores={sab.botObjectCheckTime=1..,displayHealth=51..}] run scoreboard players set @s sab.botNavigationBoredom 0

#get bored faster on low health
execute if score @s displayHealth matches ..50 run scoreboard players add @s sab.botNavigationBoredom 1

#get bored instantly (run away) if on low health
execute if score @s displayHealth matches ..33 run scoreboard players set @s sab.botNavigationBoredom 999