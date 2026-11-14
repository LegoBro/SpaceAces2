$scoreboard players $(operation) @s sab.assignSector 1
execute if score @s sab.assignSector matches ..-1 run scoreboard players set @s sab.assignSector 24
execute if score @s sab.assignSector matches 25.. run scoreboard players set @s sab.assignSector 0

#feedback
playsound block.note_block.hat master @s

#show menu again
function sa_bots:editor/menu/13_sector_paint_menu