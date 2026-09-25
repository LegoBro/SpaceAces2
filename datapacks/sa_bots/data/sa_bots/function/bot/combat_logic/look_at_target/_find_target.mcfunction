#executed by bot entity
#executed at 10Hz


#track if the target was found
scoreboard players set #found_target sab.var 0

#count up time since we had a LOS
scoreboard players add @s sab.botTimeSinceLOS 2

#remember important variables
scoreboard players operation #skill sab.var = @s sab.botSkill
scoreboard players operation #team sab.var = @s Team

#remember how tall we are
scoreboard players operation #eye_height sab.var = @s size
#swimming or fallFlying means we're very short
execute if score @s sab.botPose matches 1 run scoreboard players set #eye_height sab.var 25
execute if score @s sab.botPose matches 3 run scoreboard players set #eye_height sab.var 25

#remember how we're trying to aim
execute store result score #bot_weapon_has_downward_arc sab.var run execute if entity @s[tag=sab.botWeaponHasDownwardArc]
execute store result score #bot_weapon_slow_projectile sab.var run execute if entity @s[tag=sab.botWeaponSlowProjectile]
execute store result score #bot_shoot_floor sab.var run execute if entity @s[tag=sab.botShootAtFloor]
execute store result score #bot_lead_shot sab.var run execute if score @s sab.botSkill matches 5..
scoreboard players operation #bot_observed_x sab.var = @s sab.botObserveTargetX
scoreboard players operation #bot_observed_z sab.var = @s sab.botObserveTargetZ

#find the entity we're targeting
scoreboard players operation #get_id sab.var = @s sab.botTargetEntityID
execute store result storage uuid:in UUID[0] int 1 run scoreboard players get @s sab.botTargetUUID0
execute store result storage uuid:in UUID[1] int 1 run scoreboard players get @s sab.botTargetUUID1
execute store result storage uuid:in UUID[2] int 1 run scoreboard players get @s sab.botTargetUUID2
execute store result storage uuid:in UUID[3] int 1 run scoreboard players get @s sab.botTargetUUID3
function sa_uuid4:convert_full
data modify storage uuid:out max_range set value 200
function sa_bots:bot/combat_logic/look_at_target/find_target_macro with storage uuid:out

#if we found a target, look at them
scoreboard players set @s sab.botLookMode 0
execute if score #found_target sab.var matches 2.. run function sa_bots:bot/combat_logic/look_at_target/target_was_found

#no target found: forget coordinate of where we saw them
execute if score @s sab.botTimeSinceLOS matches 1.. run scoreboard players reset @s sab.botObserveTargetX

#if it's been a long time since we've had line-of-sight, we may forget the target
execute if score @s sab.botTimeSinceLOS matches 10.. run function sa_bots:bot/combat_logic/look_at_target/possibly_forget_target

#stop glancing when we hit the cooldown period
execute if entity @s[scores={sab.botGlanceTime=1..50,sab.botLookMode=3}] run function sa_bots:bot/combat_logic/look_at_target/forget_target

#no target exists at all? forget target
execute if score #found_target sab.var matches 0 if score @s sab.botTargetEntityID matches 1.. run \
    function sa_bots:bot/combat_logic/look_at_target/forget_target