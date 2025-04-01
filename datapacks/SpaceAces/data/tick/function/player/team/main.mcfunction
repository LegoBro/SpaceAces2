## Whether the player is on the red or blue team
# Rebranch into two specific teams
execute if entity @s[team=blue] run function tick:player/team/blue
execute if entity @s[team=red] run function tick:player/team/red
function class:4/main

return 1