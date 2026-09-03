scoreboard players set #success sab.var 0


#store arguments, if relevant
tag @s add sab.usedEditTool
execute if score @s sab.waypointLastEdited matches 1.. run scoreboard players operation #waypoint_last_edited sab.var = @s sab.waypointLastEdited
scoreboard players set #set_index sab.var -1
execute if score @s sab.defineConnectionEndIndex matches 0.. run scoreboard players operation #set_index sab.var = @s sab.defineConnectionEndIndex

#do we have something selected? if not, select something
execute at a-0-0-0-1 as @e[type=marker,tag=sab.botWaypoint,distance=..2,limit=1,sort=nearest] at @s run function sa_bots:editor/tools/edit/node_edit
execute if score #success sab.var matches 1.. run scoreboard players operation @s sab.waypointEditFocus = #success sab.var
execute if score #success sab.var matches 1.. run playsound block.note_block.guitar master @s
execute if score #success sab.var matches 1.. if score @s sab.menuPage matches 2..4 run function sa_bots:editor/menu/_open_page_index
execute if score #success sab.var matches 1.. unless score @s sab.menuPage matches 2..4 run function sa_bots:editor/menu/2_edit_menu

#failure noise if nothing happened
execute unless score #success sab.var matches 1.. run playsound block.dispenser.fail master @s ~ ~ ~ 1 1.2

#clear input
tag @s remove sab.usedEditTool
scoreboard players reset @s sab.carrotInput
scoreboard players operation @s sab.inputCooldown = #INPUT_COOLDOWN_SHORT sab.var