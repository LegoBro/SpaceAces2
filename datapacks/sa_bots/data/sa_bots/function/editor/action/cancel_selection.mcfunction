#this will also affect nodes in unloaded chunks!
scoreboard players reset * sab.selected

#update menu
execute if score @s sab.menuPage matches 0..1 run function sa_bots:editor/menu/_open_page_index


#feedback
playsound block.note_block.hat master @s