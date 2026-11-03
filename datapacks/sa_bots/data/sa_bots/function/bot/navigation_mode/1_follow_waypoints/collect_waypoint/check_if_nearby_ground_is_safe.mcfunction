#check nearby positions
execute positioned ~1 ~ ~ unless function sa_bots:bot/navigation_mode/3_stand_near_point/check_if_location_valid run return fail
execute positioned ~-1 ~ ~ unless function sa_bots:bot/navigation_mode/3_stand_near_point/check_if_location_valid run return fail
execute positioned ~ ~ ~1 unless function sa_bots:bot/navigation_mode/3_stand_near_point/check_if_location_valid run return fail
execute positioned ~ ~ ~-1 unless function sa_bots:bot/navigation_mode/3_stand_near_point/check_if_location_valid run return fail

execute positioned ~1 ~ ~1 unless function sa_bots:bot/navigation_mode/3_stand_near_point/check_if_location_valid run return fail
execute positioned ~-1 ~ ~1 unless function sa_bots:bot/navigation_mode/3_stand_near_point/check_if_location_valid run return fail
execute positioned ~1 ~ ~-1 unless function sa_bots:bot/navigation_mode/3_stand_near_point/check_if_location_valid run return fail
execute positioned ~-1 ~ ~-1 unless function sa_bots:bot/navigation_mode/3_stand_near_point/check_if_location_valid run return fail

#valid if we made it here
return 1