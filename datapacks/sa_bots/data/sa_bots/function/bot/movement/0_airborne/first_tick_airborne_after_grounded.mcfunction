#do coyote jump
execute if entity @s[tag=sab.botCoyoteJump] run scoreboard players set @s sab.botIgnoreAimTime 0
execute if entity @s[tag=sab.botCoyoteJump] run function sa_bots:bot/movement/jump/_perform_jump