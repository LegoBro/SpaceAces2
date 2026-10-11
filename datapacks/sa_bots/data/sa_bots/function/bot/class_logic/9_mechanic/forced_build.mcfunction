#clear old tag
tag @s remove sab.botHasSpecificBuildSpot

#use when off cooldown
execute if entity @s[scores={ability.1.cooldown=..0,sab.hasTurret=0}] run function sa_bots:bot/class_logic/use_ability_1_careful

#clear new tag once it's done
execute if entity @s[scores={sab.hasTurret=1..}] run tag @s remove sab.botBuildNow