#return 1 to shoot
#return 0 to not shoot

#roll random number influenced by skill level
execute store result score #random sab.var run random value -32..8
scoreboard players operation #random sab.var += @s sab.botSkill
#do thing
execute if score #random sab.var matches 10.. run return 1

#do not
return 0