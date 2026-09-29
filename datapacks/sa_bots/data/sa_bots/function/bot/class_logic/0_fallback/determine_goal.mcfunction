#set directly based on brain

scoreboard players set #choice sab.var 1
execute if entity @s[scores={sab.botAggression=5..,sab.botCooperativeness=6..}] run scoreboard players set #choice sab.var 1
execute if entity @s[scores={sab.botAggression=..4,sab.botCooperativeness=6..}] run scoreboard players set #choice sab.var 2
execute if entity @s[scores={sab.botAggression=5..,sab.botCooperativeness=..5}] run scoreboard players set #choice sab.var 3
execute if entity @s[scores={sab.botAggression=..4,sab.botCooperativeness=..5}] run scoreboard players set #choice sab.var 2