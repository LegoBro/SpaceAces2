#clear list of bots
data modify storage sa_bots:bot_data bots set value []

#all usernames are now available
data modify storage sa_bots:bot_data profiles.available set from storage sa_bots:bot_data profiles.all
data modify storage sa_bots:bot_data profiles.in_use set value []
