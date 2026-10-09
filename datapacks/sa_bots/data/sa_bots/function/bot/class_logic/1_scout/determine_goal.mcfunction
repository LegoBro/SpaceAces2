#influenced by brain

#we are very likely to go for the "pick" behavior
#if highly cooperative, could do "push"
execute store result score #random sab.var run random value 1..10
scoreboard players operation #random sab.var += @s sab.botCooperativeness
execute if score #random sab.var matches ..15 run scoreboard players set #choice sab.var 3
execute if score #random sab.var matches 16.. run scoreboard players set #choice sab.var 1

#unlikely, but possible that we will go for "defend" behavior
execute store result score #random sab.var run random value 1..10
scoreboard players operation #random sab.var += @s sab.botAggression
execute if score #random sab.var matches ..4 run scoreboard players set #choice sab.var 2
