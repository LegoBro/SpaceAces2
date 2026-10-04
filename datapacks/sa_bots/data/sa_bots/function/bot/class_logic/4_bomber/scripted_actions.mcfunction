#executed at 10hz while the bot is doing a scripted action


#cancel inputs
scoreboard players set @s SelectedItem 0
scoreboard players set @s sab.botRightClick10Hz -1
tag @s[tag=input.swap_hands] remove input.swap_hands

#we're not stuck!
scoreboard players set @s sab.botTimeSinceProgress 0

#count up time
scoreboard players add @s sab.botScriptedAction 1


#6 block sticky jump
execute if score @s sab.botScriptedAction matches 1..1000 run function sa_bots:bot/class_logic/4_bomber/scripted_sticky_jump

#10 block sticky jump
execute if score @s sab.botScriptedAction matches 1001..2000 run function sa_bots:bot/class_logic/4_bomber/scripted_double_sticky_jump

#horizontal sticky jump
execute if score @s sab.botScriptedAction matches 2001..2999 run function sa_bots:bot/class_logic/4_bomber/scripted_horizontal_sticky_jump
