scoreboard players set #success sab.var 0

#remember source
scoreboard players operation #waypoint_source sab.var = @s sab.waypointReference

#do we have something selected? if not, select something
execute at a-0-0-0-1 as @e[type=marker,tag=sab.botWaypoint,distance=..2,limit=1,sort=nearest] if score @s sab.selected matches 1.. run tag @s add sab.ignore
execute at a-0-0-0-1 as @e[type=marker,tag=sab.botWaypoint,tag=!sab.ignore,distance=..2,limit=1,sort=nearest] at @s run function sa_bots:editor/tools/selector/node_get_selected
execute at a-0-0-0-1 run tag @e[type=marker,tag=sab.ignore,distance=..2] remove sab.ignore
execute if score #success sab.var matches 1.. run playsound block.note_block.guitar master @s

#failure noise if nothing happened
execute unless score #success sab.var matches 1.. run playsound block.dispenser.fail master @s ~ ~ ~ 1 1.2

#always open ui regardless if we hit something
function sa_bots:editor/menu/1_modify_menu


#clear input
scoreboard players reset @s sab.carrotInput
scoreboard players operation @s sab.inputCooldown = #INPUT_COOLDOWN_SHORT sab.var