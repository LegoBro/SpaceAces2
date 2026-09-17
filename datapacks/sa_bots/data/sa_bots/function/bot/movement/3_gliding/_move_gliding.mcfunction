#set pose
data modify entity @s pose set value fall_flying
scoreboard players set @s sab.botPose 3

#track how long we've been in each state
scoreboard players add @s sab.airTime 1
scoreboard players set @s sab.groundedTime 0
scoreboard players set @s sab.swimmingTime 0

#exit out if there's no movement target
execute unless entity f-0-0-0-1 run return 0
#=====


#the angle between us and the movement target is the angle we're moving at

#get a normalized vector from us to our movement target entity
execute facing entity f-0-0-0-1 eyes run rotate @s ~ ~
