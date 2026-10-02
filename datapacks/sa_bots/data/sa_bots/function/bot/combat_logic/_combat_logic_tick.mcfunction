#executed by bot entity
#executed at 10Hz



#count down time until we check LOS stuff
scoreboard players remove @s sab.botCheckLOSTimer 2
scoreboard players remove @s sab.botGlanceTime 2
scoreboard players remove @s sab.botReactionCountdown 2

#deal with blindness
execute store result score #blindness sab.var run execute if score @s blindness matches 1..
execute if entity @s[scores={blindness=1..,sab.botCheckLOSTimer=..4}] store result score @s sab.botCheckLOSTimer run random value 5..10


#skill 3+: if we already have a target, but we find a more important target, change target
execute if entity @s[scores={sab.botTargetEntityID=1..,sab.botCheckLOSTimer=..0,sab.botSkill=3..}] \
    positioned ~ ~1.25 ~ positioned ^ ^ ^22 run function sa_bots:bot/combat_logic/check_for_targets/_check_with_existing_target

#no temporary task active: check for people we might want to shoot at
#(using bot's current rotation)
execute unless score @s sab.botTargetEntityID matches 1.. if score @s sab.botCheckLOSTimer matches ..0 \
    positioned ~ ~1.25 ~ positioned ^ ^ ^22 run function sa_bots:bot/combat_logic/check_for_targets/_check_without_existing_target


#if we have a target: look at them
execute if score @s sab.botTargetEntityID matches 1.. run function sa_bots:bot/combat_logic/look_at_target/_find_target


#random chance we seek out health when injured
execute if score @s displayHealth matches ..80 unless score @s sab.botTask matches 5 run function sa_bots:bot/entity_task/5_find_healing/consider_finding_healing_10hz