function load:constants
schedule function load:map_signs 5t
schedule function load:spawn_displays 5t
function load:objectives
function load:random
function load:teams
function gamemode:cycle
team modify blue seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles false
team modify blue nametagVisibility hideForOtherTeams
team modify red nametagVisibility hideForOtherTeams
team modify blue friendlyFire false
team modify red friendlyFire false
team modify lobby friendlyFire false
gamerule sendCommandFeedback false
setblock 0 1 0 oak_sign
scoreboard objectives setdisplay sidebar display
scoreboard objectives setdisplay sidebar display
scoreboard objectives setdisplay belowName health
scoreboard objectives setdisplay list health
execute unless score Player_Amount Numbers matches 1.. run scoreboard players set Player_Amount Numbers 1
scoreboard players set Maps Numbers -1
