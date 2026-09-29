#adopt calculated distance score
scoreboard players operation @s sab.markDistance = #distance sab.var

#figure out how dangerous this sector is
scoreboard players set @s sab.markDanger 0
execute if score #team sab.var matches 2 run function sa_bots:bot/entity_task/log_possible_destination/add_danger_blue
execute if score #team sab.var matches 1 run function sa_bots:bot/entity_task/log_possible_destination/add_danger_red

#count how many options are in a sector with <= danger than the bot's sector
execute if score @s sab.markDanger <= #danger sab.var run tag @s add sab.notDangerous
execute if entity @s[tag=sab.notDangerous] run scoreboard players add #count_less_dangerous sab.var 1
#same for >
execute if score @s sab.markDanger > #danger sab.var run tag @s add sab.moreDangerous
execute if entity @s[tag=sab.moreDangerous] run scoreboard players add #count_more_dangerous sab.var 1

#cleanup
tag @s remove sab.setData
scoreboard players set @s sab.lifespan 1

#gather all decisionMaker markers in one place so we can speed things up with distance=..1
execute at e-0-0-0-1 run tp @s ~ ~ ~