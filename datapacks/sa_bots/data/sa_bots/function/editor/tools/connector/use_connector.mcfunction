#argument:
#$(mode) should be "1way" or "2way"

scoreboard players set #success sab.var 0

#remember source
scoreboard players operation #waypoint_source sab.var = @s sab.waypointReference

#do we have something selected? if not, select something
execute unless score @s sab.waypointReference matches 1.. at a-0-0-0-1 as @e[type=marker,tag=sab.botWaypoint,distance=..2,limit=1,sort=nearest] at @s run function sa_bots:editor/tools/connector/pick_first_waypoint
execute if score #success sab.var matches 1.. run scoreboard players operation @s sab.waypointReference = #success sab.var
execute if score #success sab.var matches 1.. run playsound item.axe.scrape master @s

#otherwise make the connection
$execute if score #success sab.var matches 0 at a-0-0-0-1 as @e[type=marker,tag=sab.botWaypoint,distance=..2,limit=1,sort=nearest] at @s run function sa_bots:editor/tools/connector/pick_second_waypoint {mode:"$(mode)"}
execute if score #success sab.var matches -1 run scoreboard players reset @s sab.waypointReference
execute if score #success sab.var matches -1 run playsound block.note_block.chime master @s


#failure noise if nothing happened
execute if score #success sab.var matches 0 run playsound block.dispenser.fail master @s ~ ~ ~ 1 1.2


#clear input
scoreboard players reset @s sab.carrotInput
scoreboard players operation @s sab.inputCooldown = #INPUT_COOLDOWN_SHORT sab.var