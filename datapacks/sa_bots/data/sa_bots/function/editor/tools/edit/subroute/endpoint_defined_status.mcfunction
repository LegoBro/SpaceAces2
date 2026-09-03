execute if score #success_defined_endpoint sab.var matches -2 run tellraw @s ["\n",{translate:"sa_bot.prompt.target_waypoint_is_invalid",color:red,italic:true}]

execute if score #success_defined_endpoint sab.var matches 1 run tellraw @s ["\n",{translate:"sa_bot.prompt.set_endpoint_success",color:green,italic:true}]