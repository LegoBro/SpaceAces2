#do we have a destination? if not, get one
execute unless data entity @s data.destinations[0] run function sa_bots:bot/entity_task/6_find_patrol_point/pick_destination
