#executed by a player. otherwise this does nothing


#make sure something exists
execute store result score #success sab.var run execute if entity @e[limit=1,sort=nearest,type=marker,tag=sab.botWaypoint]

#get all data of waypoint and do a text dump
execute if score #success sab.var matches 1.. run data modify storage sa_bots:waypoint_info text_dump set from entity @e[limit=1,sort=nearest,type=marker,tag=sab.botWaypoint] data.uuid4
execute if score #success sab.var matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:true,color:red,italic:true}]
execute if score #success sab.var matches 1.. run data modify storage sa_bots:waypoint_info text_dump set from entity @e[limit=1,sort=nearest,type=marker,tag=sab.botWaypoint]
execute if score #success sab.var matches 1.. run tellraw @s [{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false},{text:"\n---",color:red}]

#feedback
playsound block.note_block.hat master @s


#show menu again
execute if score #success sab.var matches 1.. run scoreboard players set #no_text_push sab.var 1
function sa_bots:editor/menu/0_top_menu