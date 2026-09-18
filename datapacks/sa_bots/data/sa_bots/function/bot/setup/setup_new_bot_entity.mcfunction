#executed by a newly spawned bot

#sa_bots:bot_data this = the storage associated with this bot


#new instance
function sa_bots:bot/utility/generate_new_bot_instance
execute store result storage sa_bots:bot_data this.instance int 1 run scoreboard players get #get_bot_instance sab.var
data modify storage sa_bots:bot_data this.updateOrigin set value 1
execute store result score @s sab.botInstance run data get storage sa_bots:bot_data this.instance

#if at any point we don't do anything with this entity for 4 ticks, the garbage collector will eat it
scoreboard players set @s sab.lifespan 4

#adopt brain data (also lock variables in if they haven't been locked yet)
execute unless data storage sa_bots:bot_data this.settings.brain{locked_in:1} run function sa_bots:bot/storage/assign_bot_brain_values
execute store result score @s sab.botSkill run data get storage sa_bots:bot_data this.settings.brain.skill.actual
execute store result score @s sab.botAggression run data get storage sa_bots:bot_data this.settings.brain.aggression.actual
execute store result score @s sab.botCooperativeness run data get storage sa_bots:bot_data this.settings.brain.cooperativeness.actual

#general variables
function sa_bots:bot/setup/setup_starting_scoreboards

#should we concerned about switching teams while alive?
execute if score @s Team matches 1..2 if data storage sa_bots:bot_data this.settings.team_choice{wait_until_respawn_to_switch:0,bypass_team_restrictions:0,allow_team_change:1} run tag @s add sab.botMaySwitchTeams

#decide what class we want to be
scoreboard players set #previous_class sab.var -1
function sa_bots:bot/setup/class/pick_class
#... and adopt class variables
function sa_bots:bot/setup/class/set_class_data

#set some scores related to skill
function sa_bots:bot/setup/set_skill_related_scores

#check for nearby waypoints. follow nearest one if possible
function sa_bots:bot/waypoint_nav/seek_nearby_waypoint
execute if data entity @s data.move_targets[0] run scoreboard players set @s sab.botNavigationMode 1


#we exist now
scoreboard players add #bot_exists sab.var 1

#clean up tag
tag @s remove sab.setupNewBot