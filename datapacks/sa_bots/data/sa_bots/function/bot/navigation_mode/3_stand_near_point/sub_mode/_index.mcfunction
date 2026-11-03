#executed by a bot
#executed at 10Hz


#---------------------------------
#special code for each sub mode

# sab.botNavigationSubMode
# 1 = sniping at sniper spot
# 2 = standing near chem dispenser
# 3 = stand on explosive vantage point
# 4 = standing on control point
# 5 = standing near payload (UNIMPLEMENTED)

#index
execute if score @s sab.botNavigationSubMode matches 1 run function sa_bots:bot/navigation_mode/3_stand_near_point/sub_mode/1_sniper_spot
execute if score @s sab.botNavigationSubMode matches 2 run function sa_bots:bot/navigation_mode/3_stand_near_point/sub_mode/2_chem_dispenser
execute if score @s sab.botNavigationSubMode matches 3 run function sa_bots:bot/navigation_mode/3_stand_near_point/sub_mode/3_explosive_vantage_point
execute if score @s sab.botNavigationSubMode matches 4 run function sa_bots:bot/navigation_mode/3_stand_near_point/sub_mode/4_control_point
#...
#---------------------------------