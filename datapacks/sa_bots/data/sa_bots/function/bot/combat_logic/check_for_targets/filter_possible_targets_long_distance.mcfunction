#executed by an entity that a bot is considering shooting at
#executed at position of the bot, positioned ~ ~1.25 ~ ^ ^ ^65


#don't shoot teammates
execute if score @s Team = #team sab.var run tag @s remove sab.possibleTarget
#...except for injured teammates. try to heal them
execute if score #shoot_teammates sab.var matches 1 if entity @s[tag=sab.activePlayer] if score @s Team = #team sab.var run function sa_bots:bot/combat_logic/check_for_targets/filter_possible_targets_teammate

#can't see invisible enemies
execute if score @s invis matches 1.. unless score @s Team = #team sab.var run tag @s remove sab.possibleTarget

#we will check LOS later...

#if valid teammate: are we the most injured teammate?
execute if entity @s[tag=sab.possibleTargetHealing,tag=sab.activePlayer] \
    if score #shoot_teammates sab.var matches 1 run \
    scoreboard players operation #lowest_percent_hp_teammate sab.var < @s displayHealth

#count if we're an enemy sustainer
execute if entity @s[tag=sab.possibleTarget,tag=!sab.possibleTargetHealing,tag=sab.activePlayer] \
    if function sa_bots:bot/combat_logic/check_for_targets/check_if_sustainer run tag @s add sab.possibleTargetSustainer


#log if we're something that can shoot back
execute if entity @s[tag=sab.activePlayer] run tag @s add sab.possibleTargetCanShoot
execute if entity @s[tag=turret_base] run tag @s add sab.possibleTargetCanShoot

#count how many valid targets are found
execute if entity @s[tag=sab.possibleTarget] run scoreboard players add #target_count sab.var 1
execute if entity @s[tag=sab.possibleTargetSustainer] run scoreboard players add #target_count_sustainer sab.var 1
tag @s[tag=sab.possibleTargetSeeOnly] add sab.possibleTarget
execute if entity @s[tag=sab.possibleTargetSeeOnly] run scoreboard players add #target_count_see_only sab.var 1