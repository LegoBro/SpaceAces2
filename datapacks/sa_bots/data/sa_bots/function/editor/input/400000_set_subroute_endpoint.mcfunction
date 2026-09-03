#store input and convert to an index
scoreboard players operation @s sab.defineConnectionEndIndex = @s botPathEdit
scoreboard players remove @s sab.defineConnectionEndIndex 410000
#also remember what the source waypoint is
scoreboard players operation @s sab.waypointLastEdited = @s sab.waypointEditFocus

#feedback
playsound block.note_block.hat master @s

#ok now do the thing
tellraw @s {translate:"sa_bot.prompt.now_set_endpoint",color:white,italic:true}