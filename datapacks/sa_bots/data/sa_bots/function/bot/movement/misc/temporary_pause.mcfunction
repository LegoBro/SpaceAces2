#count down time
scoreboard players remove @s sab.botPauseTime 1
#don't give up on move target just yet
scoreboard players set @s sab.botTimeSinceProgress 0


#grounded state: perform jumps when requested
execute if entity @s[tag=sab.botJump,scores={sab.botMoveState=1}] run function sa_bots:bot/movement/jump/_perform_jump