#executed by bot entity
#executed at 10Hz


#track if the target was found
scoreboard players set #found_target sab.var 0

#find the entity we're targeting
scoreboard players operation #get_id sab.var = @s sab.botTargetEntityID
execute as @e[tag=hb,distance=..70,scores={sab.entityTargetingID=1..}] if score @s sab.entityTargetingID = #get_id sab.var \
    run function sa_bots:bot/combat_logic/look_at_target/track_target

#if it's been a long time since we've had line-of-sight, we may forget the target
execute if score @s sab.botTimeSinceLOS matches 10.. run function sa_bots:bot/combat_logic/look_at_target/possibly_forget_target

#no target exists at all? forget target
execute if score #found_target sab.var matches 0 if score @s sab.botTargetEntityID matches 1.. run \
    function sa_bots:bot/combat_logic/look_at_target/forget_target