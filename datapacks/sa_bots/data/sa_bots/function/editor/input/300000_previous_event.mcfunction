#store input as a signal
scoreboard players operation @s sab.signal = @s botPathEdit

#feedback
playsound block.note_block.hat master @s

#now open the menu again
function sa_bots:editor/menu/3_edit_connections