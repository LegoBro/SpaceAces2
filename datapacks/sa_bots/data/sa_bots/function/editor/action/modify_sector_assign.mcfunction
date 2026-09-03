$scoreboard players $(operation) @s sab.autoAssignSector 1
execute if score @s sab.autoAssignSector matches ..-1 run scoreboard players set @s sab.autoAssignSector 16
execute if score @s sab.autoAssignSector matches 17.. run scoreboard players set @s sab.autoAssignSector 0

#feedback
playsound block.note_block.hat master @s

#show menu again
function sa_bots:editor/menu/11_placement_settings