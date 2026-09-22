#executed by a bot when looking at a target while blind
#executed at 10Hz


#pick random number (rolling a 0 or less means we forget)
execute store result score #random sab.var run random value -10..35
#less likely to forget at high skill level
scoreboard players operation #random sab.var += #skill sab.var
scoreboard players operation #random sab.var += #skill sab.var
scoreboard players operation #random sab.var += #skill sab.var

#return if we don't want to forget, yet
execute if score #random sab.var matches 35.. \
    run return 0
#=====


#if we made it here, forget target
tag @s remove sab.possibleTarget
tag @s remove sab.possibleTargetSeeOnly