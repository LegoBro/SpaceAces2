#executed by bot

execute store result score #random sab.var run random value 1..100
execute if score #random sab.var matches 1..20 run scoreboard players set @s sab.botScriptedAction 10000
execute if score #random sab.var matches 21..40 run scoreboard players set @s sab.botScriptedAction 11000
execute if score #random sab.var matches 41..60 run scoreboard players set @s sab.botScriptedAction 12000
execute if score #random sab.var matches 61..80 run scoreboard players set @s sab.botScriptedAction 13000
execute if score #random sab.var matches 81..86 run scoreboard players set @s sab.botScriptedAction 14000
execute if score #random sab.var matches 87..90 run scoreboard players set @s sab.botScriptedAction 15000