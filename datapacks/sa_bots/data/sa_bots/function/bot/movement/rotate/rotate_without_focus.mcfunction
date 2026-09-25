#don't change rotation if we're at roughly the same x and z
#(this prevents bots from becoming a fidget spinner when above or below target)
execute if score @s sab.botMoveTargetDX matches -15..15 if score @s sab.botMoveTargetDZ matches -15..15 \
    unless score @s sab.botJumpCooldown matches 1.. run return 0
#=====


#face target, and use a y pitch roughly corresponding to how high up or down the target is compared to us
execute if score @s sab.botMoveTargetDY matches ..-50 facing entity f-0-0-0-1 eyes run rotate @s ~ ~-2
execute if score @s sab.botMoveTargetDY matches -49..-20 facing entity f-0-0-0-1 eyes run rotate @s ~ ~-1
execute if score @s sab.botMoveTargetDY matches -19..20 facing entity f-0-0-0-1 eyes run rotate @s ~ 2
execute if score @s sab.botMoveTargetDY matches 21..60 facing entity f-0-0-0-1 eyes run rotate @s ~ ~4
execute if score @s sab.botMoveTargetDY matches 61.. facing entity f-0-0-0-1 eyes run rotate @s ~ ~5