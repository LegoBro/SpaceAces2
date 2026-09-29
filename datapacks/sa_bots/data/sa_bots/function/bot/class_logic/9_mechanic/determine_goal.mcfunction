#influenced by brain

#equally likely to pick or push
execute store result score #random sab.var run random value 1..10
scoreboard players operation #random sab.var += @s sab.botCooperativeness
execute if score #random sab.var matches ..11 run scoreboard players set #choice sab.var 3
execute if score #random sab.var matches 12.. run scoreboard players set #choice sab.var 1

#more likely to go for "defend" behavior
execute store result score #random sab.var run random value 1..10
scoreboard players operation #random sab.var += @s sab.botAggression
execute if score #random sab.var matches ..12 run scoreboard players set #choice sab.var 2
