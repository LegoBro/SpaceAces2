#executed by a bot


#active reaction countdown is zero until we notice something
scoreboard players set @s sab.botReactionCountdown 0

#base reaction time (some randomization will be applied to this)
scoreboard players set @s sab.botReactionTimeBase 50
execute if score @s sab.botSkill matches 2 run scoreboard players set @s sab.botReactionTimeBase 40
execute if score @s sab.botSkill matches 3 run scoreboard players set @s sab.botReactionTimeBase 34
execute if score @s sab.botSkill matches 4 run scoreboard players set @s sab.botReactionTimeBase 29
execute if score @s sab.botSkill matches 5 run scoreboard players set @s sab.botReactionTimeBase 24
execute if score @s sab.botSkill matches 6 run scoreboard players set @s sab.botReactionTimeBase 20
execute if score @s sab.botSkill matches 7 run scoreboard players set @s sab.botReactionTimeBase 18
execute if score @s sab.botSkill matches 8 run scoreboard players set @s sab.botReactionTimeBase 15
execute if score @s sab.botSkill matches 9 run scoreboard players set @s sab.botReactionTimeBase 11
execute if score @s sab.botSkill matches 10.. run scoreboard players set @s sab.botReactionTimeBase 8