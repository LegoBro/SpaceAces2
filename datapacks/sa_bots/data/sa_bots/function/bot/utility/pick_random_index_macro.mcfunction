$execute store result score #random sab.var run random value 1..$(length)
scoreboard players remove #random sab.var 1
execute store result storage sa_bots:generic random_index int 1 run scoreboard players get #random sab.var