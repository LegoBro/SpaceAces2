#executed by bot entity
#executed at 10Hz



#count down time until we check LOS stuff
scoreboard players remove @s sab.botCheckLOSTimer 2


#check if we have a temporary task active
execute store result score #doing_temporary_task sab.var run execute if data entity @s data.tasks[0].flags{is_base_task:0}
execute if score #doing_temporary_task sab.var matches 1 unless score @s sab.botTargetEntityID matches 1.. run function sa_bots:bot/combat_logic/look_at_target/forget_target

#no temporary task active: check for people we might want to shoot at
#(using bot's current rotation)
execute if score #doing_temporary_task sab.var matches 0 if score @s sab.botCheckLOSTimer matches ..0 \
    positioned ~ ~1.25 ~ positioned ^ ^ ^22 run function sa_bots:bot/combat_logic/check_for_targets/_check_without_existing_target

#skill 5+: if we already have a target, but we find a more important target, change target
#...

#if we have a target: look at them
execute if score @s sab.botTargetEntityID matches 1.. run function sa_bots:bot/combat_logic/look_at_target/_find_target