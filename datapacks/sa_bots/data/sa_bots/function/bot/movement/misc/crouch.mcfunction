#executed by a bot on every tick when their sab.botCrouchTime > 0

scoreboard players remove @s sab.botCrouchTime 1
execute if score @s sab.botCrouchTime matches 1.. run tag @s add input.sneak
execute if score @s sab.botCrouchTime matches ..0 run tag @s remove input.sneak