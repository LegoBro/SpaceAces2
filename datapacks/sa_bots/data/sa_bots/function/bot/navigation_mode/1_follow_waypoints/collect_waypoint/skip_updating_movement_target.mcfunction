#executed by bot


#clear tag
tag @s remove sab.doNotUpdateMoveTarget

#append instead of prepend. we want to keep the move_target we already have at index 0.
#when we finish out current movement, we will return to following the path chosen for us.
data modify entity @s data.move_targets append from storage sa_bots:generic target