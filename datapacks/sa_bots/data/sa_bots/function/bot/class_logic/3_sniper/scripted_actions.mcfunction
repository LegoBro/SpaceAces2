#executed at 10hz while the bot is doing a scripted action


#count up time
scoreboard players add @s sab.botScriptedAction 1

#we're not stuck!
scoreboard players set @s sab.botTimeSinceProgress 0


#6 block jump
execute if score @s sab.botScriptedAction matches 1..1000 run function sa_bots:bot/class_logic/3_sniper/scripted_high_jump

#sniper can't do anything else :c
execute if score @s sab.botScriptedAction matches 1001..9999 run scoreboard players reset @s sab.botScriptedAction



#special behavior overrides that can apply to any class
execute if score @s sab.botScriptedAction matches 10000.. run function sa_bots:bot/class_logic/0_fallback/scripted_actions