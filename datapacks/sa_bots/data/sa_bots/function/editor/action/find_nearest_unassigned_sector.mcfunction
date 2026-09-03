#find nearest unassigned waypoint (if it exists)
scoreboard players set #success sab.var 0
execute as @e[type=marker,tag=sab.botWaypointGeneric] unless data entity @s data.sector run tag @s add sab.temp
execute if entity @e[type=marker,tag=sab.temp] run scoreboard players set #success sab.var 1

#face or go to nearest depending if it's obstructed
execute if score #success sab.var matches 1 at @e[limit=1,type=marker,tag=sab.temp,sort=nearest] if block ~ ~ ~ #sa_bots:not_solid if block ~ ~1 ~ #sa_bots:not_solid run scoreboard players set #success sab.var 2
execute if score #success sab.var matches 2 positioned as @e[limit=1,type=marker,tag=sab.temp,sort=nearest] run tp @s ~ ~ ~
execute if score #success sab.var matches 1 at @s facing entity @e[limit=1,type=marker,tag=sab.temp,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~

#feedback
execute if score #success sab.var matches 0 run playsound block.dispenser.fail master @s ~ ~ ~ 1 1.2
execute if score #success sab.var matches 1.. run playsound block.note_block.hat master @s


#cleanup
tag @e[type=marker,tag=sab.temp] remove sab.temp