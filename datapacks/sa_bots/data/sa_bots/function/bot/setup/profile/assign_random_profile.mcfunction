#make sure profiles exist
execute unless data storage sa_bots:bot_data profiles.available run data modify storage sa_bots:bot_data profiles.available set from storage sa_bots:bot_data profiles.all


#count how many profiles are available
execute store result storage sa_bots:generic length int 1 run data get storage sa_bots:bot_data profiles.available
execute store result score #length sab.var run data get storage sa_bots:generic length
#pick a random index and extract the entry
execute if score #length sab.var matches 2.. run function sa_bots:bot/utility/pick_random_index_macro with storage sa_bots:generic

#alright now go get it
execute if score #length sab.var matches 2.. run function sa_bots:bot/setup/profile/assign_random_profile_go with storage sa_bots:generic
execute unless score #length sab.var matches 2.. run data modify storage sa_bots:bot_data profiles.get set value {id:-1,username:"MISSING_NAME",profile:"{}"}