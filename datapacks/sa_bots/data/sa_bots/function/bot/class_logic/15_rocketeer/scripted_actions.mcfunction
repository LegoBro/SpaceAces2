#executed at 10hz while the bot is doing a scripted action


#cancel inputs
scoreboard players set @s SelectedItem 0
scoreboard players set @s sab.botRightClick10Hz -1

#we're not stuck!
scoreboard players set @s sab.botTimeSinceProgress 0


#count up time
scoreboard players add @s sab.botScriptedAction 1


#6 block jump
execute if score @s sab.botScriptedAction matches 1..1000 run function sa_bots:bot/class_logic/15_rocketeer/scripted_rocket_jump
#10 block vertical jump
execute if score @s sab.botScriptedAction matches 1001..2000 run function sa_bots:bot/class_logic/15_rocketeer/scripted_rocket_jump_double

#horizontal jump
execute if score @s sab.botScriptedAction matches 2001..2999 run function sa_bots:bot/class_logic/15_rocketeer/scripted_horizontal_jump
