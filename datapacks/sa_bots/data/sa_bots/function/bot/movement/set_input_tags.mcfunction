#executed by bot at 10Hz

#clear tags
tag @s[tag=input.forward] remove input.forward
tag @s[tag=input.left] remove input.left
tag @s[tag=input.right] remove input.right
tag @s[tag=input.backward] remove input.backward

#no input if we didn't move this tick
execute if score #placed_movement_target sab.var matches 0 run \
    return 0
#=====

#no directional inputs when gliding
execute if score @s sab.botMoveState matches 3 run return 0
#=====

#moved? use difference between move and face angle to set tag for what "keys" we pressed
execute if score @s sab.botAngleDiffMoveAndFace matches -85..85 run tag @s add input.forward
execute unless score @s sab.botAngleDiffMoveAndFace matches -95..95 run tag @s add input.backward
execute if score @s sab.botAngleDiffMoveAndFace matches 5..175 run tag @s add input.left
execute if score @s sab.botAngleDiffMoveAndFace matches -175..-5 run tag @s add input.right