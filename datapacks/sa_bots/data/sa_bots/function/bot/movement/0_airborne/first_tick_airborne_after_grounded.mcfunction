#cancel rotation offset if we're about to walk off a cliff
execute unless score @s sab.botJumpCooldown matches 1.. if entity @s[scores={sab.botMoveRotationOffsetTime=1..}] \
    if block ~ ~ ~ #sa_bots:not_solid if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid \
    run function sa_bots:bot/movement/0_airborne/jump_and_cancel_rotation_offset

#do coyote jump if we have the tag
execute if entity @s[tag=sab.botCoyoteJump] run scoreboard players set @s sab.botIgnoreAimTime 0
execute if entity @s[tag=sab.botCoyoteJump] run function sa_bots:bot/movement/jump/_perform_jump