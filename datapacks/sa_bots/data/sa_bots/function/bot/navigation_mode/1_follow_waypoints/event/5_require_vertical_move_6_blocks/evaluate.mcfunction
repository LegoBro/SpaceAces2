#we can do it if we have a high jump or other movement ability
execute if entity @s[tag=sab.botHas6BlockJump] run scoreboard players set #valid_event sab.var 1
execute if entity @s[tag=sab.botHasMovementAbilities] run scoreboard players set #valid_event sab.var 1