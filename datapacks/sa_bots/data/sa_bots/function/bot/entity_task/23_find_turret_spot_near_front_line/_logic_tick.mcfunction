#do we have a destination? if not, get one
execute unless data entity @s data.destinations[0] run function sa_bots:bot/entity_task/23_find_turret_spot_near_front_line/pick_destination
