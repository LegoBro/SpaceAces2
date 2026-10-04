#executed by a bot that should no longer be followed

scoreboard players operation #this_id sab.var = @s id

execute as @e[type=mannequin,tag=sab.botEntity] if score @s sab.botSeekingEnemy = #this_id sab.var run scoreboard players reset @s sab.botSeekingEnemy