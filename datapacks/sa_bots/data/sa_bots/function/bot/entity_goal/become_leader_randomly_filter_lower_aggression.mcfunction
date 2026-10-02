#the less aggressive we are compared to the most aggressive teammate found, the lower the chances are that we become leader


#how far below the best are we?
scoreboard players operation #test sab.var = #best sab.var
scoreboard players operation #test sab.var -= @s sab.botAggression

#if we roll a low number, we get disqualified from being the leader
execute store result score #random sab.var run random value 1..10
scoreboard players operation #random sab.var -= #test sab.var
execute if score #random sab.var matches ..4 run return 1
#=====

#we passed!
return 0