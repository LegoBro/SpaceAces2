#executed by bot entity
#executed at 10Hz



#----------------------------
#CLASS TICK

#translate sab.botRightClick10Hz into rightClick
scoreboard players remove @s[scores={sab.botRightClick10Hz=0..}] sab.botRightClick10Hz 1
execute if score @s sab.botRightClick10Hz matches 0.. run scoreboard players set @s rightClick 1

#directly run Space Aces functions
function class:4/main
#----------------------------



#----------------------------
#MOVEMENT
function sa_bots:bot/movement/_movement_main
#----------------------------