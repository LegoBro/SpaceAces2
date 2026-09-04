#store input as a signal
$scoreboard players set @s sab.signal $(index)

#feedback
playsound block.note_block.hat master @s

#now open the menu again
function sa_bots:editor/menu/4_edit_tags