#influenced by brain

#we are very likely to go for the "pick" behavior
#if highly cooperative, could do "push"
execute store result score #random sab.var run random value 1..10
scoreboard players operation #random sab.var += @s sab.botCooperativeness
execute if score #random sab.var matches ..16 run scoreboard players set #choice sab.var 3
execute if score #random sab.var matches 17.. run scoreboard players set #choice sab.var 1

#might go for "defend" behavior if low aggression
execute store result score #random sab.var run random value 1..10
scoreboard players operation #random sab.var += @s sab.botAggression
#(more likely if we didn't decide to pick)
execute if score #choice sab.var matches 1 run scoreboard players remove #random sab.var 3
execute if score #random sab.var matches ..6 run scoreboard players set #choice sab.var 2