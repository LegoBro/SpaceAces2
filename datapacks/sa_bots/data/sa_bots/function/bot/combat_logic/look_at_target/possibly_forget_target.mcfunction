#executed by a bot when sab.botTimeSinceLOS >= 10
#executed at 10Hz


#pick random number (rolling a 0 or less means we forget)
execute store result score #random sab.var run random value 7..77
#less likely to forget at high skill level
scoreboard players operation #random sab.var += @s sab.botSkill
scoreboard players operation #random sab.var += @s sab.botSkill
scoreboard players operation #random sab.var += @s sab.botSkill
#more likely to forget target as time goes on
scoreboard players operation #random sab.var -= @s sab.botTimeSinceLOS

#return if we don't want to forget, yet
execute if score #random sab.var matches 1.. \
    run return 0
#=====


#if we made it here, forget target
function sa_bots:bot/combat_logic/look_at_target/forget_target