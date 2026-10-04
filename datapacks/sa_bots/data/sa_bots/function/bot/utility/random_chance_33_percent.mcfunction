execute store result score #random sab.var run random value 1..3
execute if score #random sab.var matches 1 run return 1
return 0