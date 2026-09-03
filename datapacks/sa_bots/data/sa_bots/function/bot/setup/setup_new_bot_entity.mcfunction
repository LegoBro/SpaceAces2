#executed by a newly spawned bot

#sa_bots:bot_data this = the storage associated with this bot


#new instance
function sa_bots:bot/utility/generate_new_bot_instance
execute store result storage sa_bots:bot_data this.instance int 1 run scoreboard players get #get_bot_instance sab.var
data modify storage sa_bots:bot_data this.updateOrigin set value 1

#adopt variables from storage
execute store result score @s Team run data get storage sa_bots:bot_data this.team
execute store result score @s sab.botID run data get storage sa_bots:bot_data this.id
execute store result score @s sab.botInstance run data get storage sa_bots:bot_data this.instance
scoreboard players set @s sab.lifespan 4

#adopt brain data (also lock variables in if they haven't been locked yet)
execute store result score #read sab.var run data get storage sa_bots:bot_data this.settings.brain.locked_in
execute if score #read sab.var matches 0 run function sa_bots:bot/storage/assign_bot_brain_values
execute store result score @s sab.botSkill run data get storage sa_bots:bot_data this.settings.brain.skill.actual
execute store result score @s sab.botAggression run data get storage sa_bots:bot_data this.settings.brain.aggression.actual
execute store result score @s sab.botCooperativeness run data get storage sa_bots:bot_data this.settings.brain.cooperativeness.actual

#general variables
function sa_bots:bot/setup/setup_starting_scoreboards

#adopt class variables
function sa_bots:bot/setup/class/set_class_data

#check for nearby waypoints. follow nearest one if possible
function sa_bots:bot/waypoint_nav/seek_nearby_waypoint
execute if data entity @s data.move_targets[0] run scoreboard players set @s sab.botNavigationMode 1


#we exist now
scoreboard players add #bot_exists sab.var 1

#clean up tag
tag @s remove sab.setupNewBot