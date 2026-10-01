#do forced angle if requested
execute if score @s sab.botForceAngleTime matches 1.. run return run function sa_bots:bot/movement/rotate/rotate_to_face_angle
#=====

#don't change rotation if we're at roughly the same x and z
#(this prevents bots from becoming a fidget spinner when above or below target)
execute if score @s sab.botMoveTargetDX matches -15..15 if score @s sab.botMoveTargetDZ matches -15..15 \
    unless score @s sab.botJumpCooldown matches 1.. run return 0
#=====


#face target, and use a y pitch roughly corresponding to how high up or down the target is compared to us

#we're below, look up
execute if score @s sab.botMoveTargetDY matches ..-10 facing entity f-0-0-0-1 eyes run rotate @s ~ ~-2
#middle
execute if score @s sab.botMoveTargetDY matches -9..10 facing entity f-0-0-0-1 eyes run rotate @s ~ 2
#we're above, look down
execute if score @s sab.botMoveTargetDY matches 11.. facing entity f-0-0-0-1 eyes run rotate @s ~ ~-2