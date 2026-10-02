#executed at 10hz by a bot with 80% health or less
#executed when the bot is doing any task other than finding health


#decide whether we want to path towards a health source

#pick random number
execute store result score #random sab.var run random value 0..10000


#don't bother with any other checks if there's no shot of us rolling low enough
execute if score #random sab.var matches 300.. run return 0


#less likely the higher our health is
scoreboard players operation #random sab.var += @s displayHealth

#much less likely if the went for health recently
execute if score @s sab.botPreviousNonBaseTask matches 5 run scoreboard players add #random sab.var 50

#slightly more likely if high skill
scoreboard players operation #random sab.var -= @s sab.botSkill

#slightly less likely if more aggressive
scoreboard players operation #random sab.var += @s sab.botAggression

#more likely if friendly chem dispensers are nearby
execute if score #random sab.var matches 81..110 if entity @s[scores={Team=1,sab.botSkill=2..}] if entity @e[type=item_display,tag=chem_dispenser,distance=..20,scores={Team=1}] run scoreboard players remove #random sab.var 30
execute if score #random sab.var matches 81..110 if entity @s[scores={Team=2,sab.botSkill=2..}] if entity @e[type=item_display,tag=chem_dispenser,distance=..20,scores={Team=2}] run scoreboard players remove #random sab.var 30


#do it if we roll a low number
execute if score #random sab.var matches ..80 run function sa_bots:bot/entity_task/add_non_base_task_macro {choice:5}