#executed by a newly spawned bot entity

#we need to decide which class to pick


#if we are class-locked and already have a class, kick out
execute if data storage sa_bots:bot_data this.class if data storage sa_bots:bot_data this.settings.class_choice{allow_class_change:0} \
    run return 0
#=====


#update origin later if we're running this!
data modify storage sa_bots:bot_data this.updateOrigin set value 1

#if we have a desired class, use it no matter what
execute store result score #read sab.var run data get storage sa_bots:bot_data this.settings.class_choice.desired_class
execute if score #read sab.var matches 1..15 run \
    return run data modify storage sa_bots:bot_data this.class set from storage sa_bots:bot_data this.settings.class_choice.desired_class
#=====


#use class_choice.selection_logic to pick something
#   0 -- pick class entirely at random
#   1 -- pick class at random, but only classes that haven't been picked
#   2 -- pick class with respect for team composition and gamemode

#pure random
execute if data storage sa_bots:bot_data this.settings.class_choice{selection_logic:0} run \
    return run function sa_bots:bot/setup/class/pick_random_unrestricted
#======

#temporarily re-adopt class value from storage if it exists
execute if data storage sa_bots:bot_data this.class store result score @s Class run data get storage sa_bots:bot_data this.class
#count how many players are playing each class
function sa_bots:bot/setup/class/_run_all_counts


#random unfilled role
execute if data storage sa_bots:bot_data this.settings.class_choice{selection_logic:1} run \
    return run function sa_bots:bot/setup/class/pick_random_unfilled_class
#=====


#pick based on team composition and gamemode
function sa_bots:bot/setup/class/pick_respecting_team_composition