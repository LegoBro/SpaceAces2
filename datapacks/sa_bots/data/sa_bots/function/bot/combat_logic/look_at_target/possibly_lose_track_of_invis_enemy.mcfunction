#executed by an entity that a bot is targeting when the entity is invisible
#executed at 10Hz


#pick random number (rolling a 35 or less means we forget)
execute store result score #random sab.var run random value 0..35
#less likely to forget at high skill level
scoreboard players operation #random sab.var += #skill sab.var
scoreboard players operation #random sab.var += #skill sab.var
scoreboard players operation #random sab.var += #skill sab.var

#more likely to forget if we are *not* holding our primary weapon
execute if entity @s[tag=sab.botEntity] unless score @s SelectedItem matches 0 run scoreboard players remove #random sab.var 17
execute if entity @s[type=player] unless score @s SelectedItem matches 0 run scoreboard players remove #random sab.var 17

#higher skill bot will never lose track of an invulnerable invisible player (ex: seeker using swift shade)
execute if score #skill sab.var matches 5.. if entity @s[scores={invulnerable=1..}] run scoreboard players set #random sab.var 99

#return if we don't want to forget, yet
execute if score #random sab.var matches 36.. \
    run return 0
#=====


#if we made it here, forget target
tag @s remove sab.possibleTarget
tag @s remove sab.possibleTargetSeeOnly