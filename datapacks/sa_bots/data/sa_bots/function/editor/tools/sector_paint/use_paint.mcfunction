scoreboard players set #success sab.var 0


#global score
scoreboard players operation #sector sab.var = @s sab.assignSector

#apply paint to whatever we're looking at
execute at a-0-0-0-1 as @e[type=marker,tag=sab.botWaypointGeneric,distance=..2] at @s run function sa_bots:editor/tools/sector_paint/node_set_sector
execute if score #success sab.var matches 1.. run playsound item.bucket.empty master @s

#failure noise if nothing happened
execute unless score #success sab.var matches 1.. run playsound block.dispenser.fail master @s ~ ~ ~ 1 1.2

#always bring up the ui regardless of success
function sa_bots:editor/menu/13_sector_paint_menu


#clear input
scoreboard players reset @s sab.carrotInput
scoreboard players operation @s sab.inputCooldown = #INPUT_COOLDOWN_SHORT sab.var