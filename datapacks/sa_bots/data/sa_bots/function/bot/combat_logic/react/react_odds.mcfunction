#return 0 to allow reaction
#return 1 to block reaction


#random odds are directly influenced by skill level
execute store result score #random sab.var run random value -2..8
scoreboard players operation #random sab.var += @s sab.botSkill
#more likely to react to high damage
execute if score @s damage matches 20.. run scoreboard players add #random sab.var 1
execute if score @s damage matches 30.. run scoreboard players add #random sab.var 1
execute if score @s damage matches 40.. run scoreboard players add #random sab.var 1
execute if score @s damage matches 50.. run scoreboard players add #random sab.var 1
execute if score @s damage matches 60.. run scoreboard players add #random sab.var 1

#roll higher than a 10 and we're allowed to react
execute if score #random sab.var matches 10.. run return 0

#still here? no reaction
return 1