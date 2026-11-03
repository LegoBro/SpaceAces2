#executed by bot entity every tick while doing a specific sub-behavior for navigation mode 3


#get bored if fully healed
execute if score @s displayHealth matches 99.. run scoreboard players set @s sab.botNavigationBoredom 999

#don't get bored if we really need health
execute if score @s displayHealth matches ..50 run scoreboard players set @s sab.botNavigationBoredom 0

#might get bored if somewhat healthy
execute store result score #random sab.var run random value 1..500
execute if score @s displayHealth matches 60.. if score #random sab.var matches 500 run scoreboard players set @s sab.botNavigationBoredom 999
execute if score @s displayHealth matches 70.. if score #random sab.var matches 499 run scoreboard players set @s sab.botNavigationBoredom 999
execute if score @s displayHealth matches 80.. if score #random sab.var matches 498 run scoreboard players set @s sab.botNavigationBoredom 999
execute if score @s displayHealth matches 90.. if score #random sab.var matches 497 run scoreboard players set @s sab.botNavigationBoredom 999

#get bored (run) if overwhelmed by enemies
function sa_bots:bot/class_logic/check_if_enemies_nearby
execute if entity @s[scores={sab.botSkill=6..,sab.botConfidence=..3}] \
    if score #count sab.var matches 1.. if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_less_likely run scoreboard players set @s sab.botNavigationBoredom 999
execute if entity @s[scores={sab.botSkill=6..,sab.botConfidence=..5}] \
    if score #count sab.var matches 3.. if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_less_likely run scoreboard players set @s sab.botNavigationBoredom 999

#get bored instantly if there aren't any chem dispensers anymore
execute unless entity @e[type=item_display,tag=chem_dispenser,distance=..7] run scoreboard players set @s sab.botNavigationBoredom 999
