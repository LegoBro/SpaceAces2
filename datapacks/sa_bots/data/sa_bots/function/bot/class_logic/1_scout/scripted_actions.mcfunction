#executed at 10hz while the bot is doing a scripted action


#cancel inputs
tag @s[tag=input.swap_hands] remove input.swap_hands

#we're not stuck!
scoreboard players set @s sab.botTimeSinceProgress 0


#count up time
scoreboard players add @s sab.botScriptedAction 1


#6 block and 10 block jump are rolled into one
execute if score @s sab.botScriptedAction matches 1..1000 run scoreboard players set @s sab.botScriptedAction 1001
#vertical jump
execute if score @s sab.botScriptedAction matches 1001..2000 run function sa_bots:bot/class_logic/1_scout/scripted_high_jump

#horizontal jump
execute if score @s sab.botScriptedAction matches 2001..2999 run function sa_bots:bot/class_logic/1_scout/scripted_horizontal_jump
