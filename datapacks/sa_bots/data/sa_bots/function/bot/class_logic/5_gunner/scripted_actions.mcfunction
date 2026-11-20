#executed at 10hz while the bot is doing a scripted action


#we're not stuck!
scoreboard players set @s sab.botTimeSinceProgress 0


#count up time
scoreboard players add @s sab.botScriptedAction 1


#no support for actions 1,2,3
scoreboard players reset @s[scores={sab.botScriptedAction=1..2999}] sab.botScriptedAction


#special behavior overrides that can apply to any class
execute if score @s sab.botScriptedAction matches 10000.. run function sa_bots:bot/class_logic/0_fallback/scripted_actions