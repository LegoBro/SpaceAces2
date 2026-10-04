#if we reach 85% health, cancel task
execute if score @s displayHealth matches 85.. run return run function sa_bots:bot/entity_task/complete_non_base_task
#=====

#do we have a destination? if not, get one
execute unless data entity @s data.destinations[0] run function sa_bots:bot/entity_task/5_find_healing/pick_destination
