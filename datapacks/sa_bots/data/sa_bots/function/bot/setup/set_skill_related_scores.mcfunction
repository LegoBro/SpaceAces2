#executed by a bot


#active reaction countdown is zero until we notice something
scoreboard players set @s sab.botReactionCountdown 0

#base reaction time (some randomization will be applied to this)
scoreboard players set @s sab.botReactionTimeBase 15
execute if score @s sab.botSkill matches 2 run scoreboard players set @s sab.botReactionTimeBase 12
execute if score @s sab.botSkill matches 3 run scoreboard players set @s sab.botReactionTimeBase 11
execute if score @s sab.botSkill matches 4 run scoreboard players set @s sab.botReactionTimeBase 10
execute if score @s sab.botSkill matches 5 run scoreboard players set @s sab.botReactionTimeBase 9
execute if score @s sab.botSkill matches 6 run scoreboard players set @s sab.botReactionTimeBase 8
execute if score @s sab.botSkill matches 7 run scoreboard players set @s sab.botReactionTimeBase 7
execute if score @s sab.botSkill matches 8 run scoreboard players set @s sab.botReactionTimeBase 6
execute if score @s sab.botSkill matches 9 run scoreboard players set @s sab.botReactionTimeBase 5
execute if score @s sab.botSkill matches 10.. run scoreboard players set @s sab.botReactionTimeBase 4


#random pause before we start moving after respawning
execute if score @s sab.botSkill matches ..1 store result score @s sab.botPauseTime run random value 50..100
execute if score @s sab.botSkill matches 2 store result score @s sab.botPauseTime run random value 40..80
execute if score @s sab.botSkill matches 3 store result score @s sab.botPauseTime run random value 30..60
execute if score @s sab.botSkill matches 4 store result score @s sab.botPauseTime run random value 20..50
execute if score @s sab.botSkill matches 5 store result score @s sab.botPauseTime run random value 10..40
execute if score @s sab.botSkill matches 6 store result score @s sab.botPauseTime run random value 8..30
execute if score @s sab.botSkill matches 7 store result score @s sab.botPauseTime run random value 6..20
execute if score @s sab.botSkill matches 8 store result score @s sab.botPauseTime run random value 4..15
execute if score @s sab.botSkill matches 9 store result score @s sab.botPauseTime run random value 2..10
execute if score @s sab.botSkill matches 10.. store result score @s sab.botPauseTime run random value 0..5
