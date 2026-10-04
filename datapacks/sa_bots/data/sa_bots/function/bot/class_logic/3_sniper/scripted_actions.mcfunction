#executed at 10hz while the bot is doing a scripted action


#count up time
scoreboard players add @s sab.botScriptedAction 1

#we're not stuck!
scoreboard players set @s sab.botTimeSinceProgress 0


#6 block jump
execute if score @s sab.botScriptedAction matches 1..1000 run function sa_bots:bot/class_logic/3_sniper/scripted_high_jump

#sniper can't do anything else :c
execute if score @s sab.botScriptedAction matches 1001.. run scoreboard players reset @s sab.botScriptedAction
