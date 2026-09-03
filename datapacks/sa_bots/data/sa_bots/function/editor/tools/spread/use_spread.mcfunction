scoreboard players set #success sab.var 0


#do we have something selected? if not, select something
execute at a-0-0-0-1 as @e[type=marker,tag=sab.botWaypoint,distance=..2,limit=1,sort=nearest] at @s run function sa_bots:editor/tools/edit/node_edit
execute if score #success sab.var matches 1.. run scoreboard players operation @s sab.waypointSpreadFocus = #success sab.var

#do we already have something selected, but didn't just hit something? set spread on existing focus based on difference from cursor position
execute if score #success sab.var matches 0 if score @s sab.waypointSpreadFocus matches 1.. run function sa_bots:editor/tools/spread/set_spread_via_cursor

#update menu if something happened
execute if score #success sab.var matches 1.. run function sa_bots:editor/menu/12_spread_menu
execute if score #success sab.var matches 1 run playsound block.note_block.guitar master @s ~ ~ ~ 1 1.2
execute if score #success sab.var matches 2.. run playsound block.note_block.guitar master @s

#failure noise if nothing happened
execute unless score #success sab.var matches 1.. run playsound block.dispenser.fail master @s ~ ~ ~ 1 1.2
execute unless score #success sab.var matches 1.. run function sa_bots:editor/tools/spread/lose_focus

#clear input
scoreboard players reset @s sab.carrotInput
scoreboard players operation @s sab.inputCooldown = #INPUT_COOLDOWN_SHORT sab.var