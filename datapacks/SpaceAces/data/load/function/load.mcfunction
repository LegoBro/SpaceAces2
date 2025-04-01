function load:objectives
function load:constants
schedule function load:map_signs 5t
schedule function load:spawn_displays 5t

function load:teams

function class:reload

#function gamemode:cycle

# Forcloads the game
forceload add 20028 -68 20163 67

execute unless score dev_mode settings matches 1.. run gamerule sendCommandFeedback false
setblock 0 1 0 minecraft:oak_sign
#scoreboard objectives setdisplay sidebar display
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list health
execute unless score Player_Amount Numbers matches 1.. run scoreboard players set Player_Amount Numbers 1
scoreboard players set Maps Numbers -1
#schedule function gamemode:sign_display 5s
return 1