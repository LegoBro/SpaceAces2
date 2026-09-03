#store in profiles.get
$data modify storage sa_bots:bot_data profiles.get set from storage sa_bots:bot_data profiles.available[$(random_index)]

#remove from profiles.available and add to profiles.in_use
$data remove storage sa_bots:bot_data profiles.available[$(random_index)]
data modify storage sa_bots:bot_data profiles.in_use append from storage sa_bots:bot_data profiles.get