#mark for deletion
tag @e[type=marker,tag=sab.botWaypoint,scores={sab.selected=0..}] add sab.deleteWaypoint

#deleted nodes will be processed gradually instead of all at once
#this way we don't risk overflowing the command limit when they all recursively remove connection data that involves them


#feedback
playsound block.fire.extinguish master @s

#also cancel selection
function sa_bots:editor/action/cancel_selection