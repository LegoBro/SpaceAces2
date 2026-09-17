#executed by some entity that a bot is targeting
#executed at the position of the bot


#we exist if we ran this function
scoreboard players set #found_target sab.var 1

#count up time since we had a LOS
scoreboard players add @s sab.botTimeSinceLOS 2

#check if we have a valid LOS to self (only on every other go, for performance)
execute positioned ~ ~1.25 ~ facing entity @s eyes run function sa_bots:bot/combat_logic/check_for_targets/check_los_to_target

#clean up "see only" tag
tag @s[tag=sab.possibleTargetSeeOnly] add sab.possibleTarget

#we exist AND have a valid LOS
execute if entity @s[tag=sab.possibleTarget] run function sa_bots:bot/combat_logic/look_at_target/set_eye_height_before_getting_rotation
