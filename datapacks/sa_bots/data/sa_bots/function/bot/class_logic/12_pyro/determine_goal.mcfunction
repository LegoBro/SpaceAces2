#influenced by brain

#slightly more likely to push instead of pick
execute store result score #random sab.var run random value 1..10
scoreboard players operation #random sab.var += @s sab.botCooperativeness
execute if score #random sab.var matches ..10 run scoreboard players set #choice sab.var 3
execute if score #random sab.var matches 11.. run scoreboard players set #choice sab.var 1

#more likely to go for "defend" behavior
execute store result score #random sab.var run random value 1..10
scoreboard players operation #random sab.var += @s sab.botAggression
execute if score #random sab.var matches ..11 run scoreboard players set #choice sab.var 2
