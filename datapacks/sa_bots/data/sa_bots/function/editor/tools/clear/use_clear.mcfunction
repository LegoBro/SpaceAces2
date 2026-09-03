scoreboard players set #success sab.var 0


#do we have something selected? if not, select something
tag @s add sab.usedEditTool
execute at a-0-0-0-1 as @e[type=marker,tag=sab.botWaypoint,distance=..2,limit=1,sort=nearest] at @s run function sa_bots:editor/tools/clear/waypoint_clear_data
execute if score #success sab.var matches 1.. run playsound block.note_block.trumpet_oxidized master @s
tag @s remove sab.usedEditTool

#failure noise if nothing happened
execute unless score #success sab.var matches 1.. run playsound block.dispenser.fail master @s ~ ~ ~ 1 1.2

#always bring up the ui regardless of success
function sa_bots:editor/menu/14_clear_data_menu


#clear input
scoreboard players reset @s sab.carrotInput
scoreboard players operation @s sab.inputCooldown = #INPUT_COOLDOWN_SHORT sab.var