#executed by one of the 16 markers keeping track of team presence for some sector


#do nothing if our current presence is greater than the input
execute if score @s sab.teamPresenceRed >= #input sab.var run return 0
#=====

#do nothing if we're more blue than red
execute if score @s sab.teamPresenceNet matches 1.. run return fail
#=====

#set team presence to (min(input, 10) - 1)
scoreboard players operation @s sab.teamPresenceRed = #input sab.var
execute if score @s sab.teamPresenceRed matches 11.. run scoreboard players set @s sab.teamPresenceRed 10
scoreboard players remove @s sab.teamPresenceRed 1

#don't go any further if our neighbors would be 0
execute if score @s sab.teamPresenceRed matches ..1 run return 0
#=====

#we will need to spread to our neighbords on the next loop-through
scoreboard players add #propagated_red sab.var 1
tag @s add sab.propagateAgain.red