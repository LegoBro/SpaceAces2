#influenced by brain

#more likely to push than pick
execute store result score #random sab.var run random value 1..10
scoreboard players operation #random sab.var += @s sab.botCooperativeness
execute if score #random sab.var matches ..8 run scoreboard players set #choice sab.var 3
execute if score #random sab.var matches 9.. run scoreboard players set #choice sab.var 1

#might go for "defend" behavior if low aggression
execute store result score #random sab.var run random value 1..10
scoreboard players operation #random sab.var += @s sab.botAggression
execute if score #random sab.var matches ..8 run scoreboard players set #choice sab.var 2
