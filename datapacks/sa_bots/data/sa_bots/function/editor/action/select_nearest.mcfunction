#select nearest to executing player
tag @e[type=marker,tag=sab.botWaypoint,scores={sab.selected=1..}] add sab.temp
scoreboard players set @e[limit=1,sort=nearest,type=marker,tag=sab.botWaypoint,tag=!sab.temp] sab.selected 1
tag @e[type=marker,tag=sab.temp] remove sab.temp

#update menu
execute if score @s sab.menuPage matches 0..1 run function sa_bots:editor/menu/_open_page_index


#feedback
playsound block.note_block.hat master @s