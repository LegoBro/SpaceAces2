#executed by some entity that a bot is targeting
#executed at the position of the bot


#we exist if we ran this function
scoreboard players set #found_target sab.var 1

#report if we're a teammate
execute store result score #target_is_teammate sab.var run execute if score @s Team = #team sab.var


#check if we have a valid LOS to self (only on every other go, for performance)
execute positioned ~ ~1.25 ~ facing entity @s eyes run function sa_bots:bot/combat_logic/check_for_targets/check_los_to_target

#deal with "see only" tag
tag @s[tag=sab.possibleTargetSeeOnly] add sab.possibleTarget

#if we're an invisible enemy, there's a good chance the bot will lose sight of us
execute if score @s invis matches 1.. unless score @s Team = #team sab.var run function sa_bots:bot/combat_logic/look_at_target/possibly_lose_track_of_invis_enemy
#if bot is blinded, there's also a good chance they will lose sight of us
execute if score #blindness sab.var matches 1.. run function sa_bots:bot/combat_logic/look_at_target/possibly_lose_track_of_target_when_blind

#don't shoot at teammates if we aren't allowed to
execute if score #shoot_teammates sab.var matches 0 if score @s Team = #team sab.var run tag @s remove sab.possibleTarget

#we exist AND have a valid LOS
execute if entity @s[tag=sab.possibleTarget] run function sa_bots:bot/combat_logic/look_at_target/set_eye_height_before_getting_rotation
