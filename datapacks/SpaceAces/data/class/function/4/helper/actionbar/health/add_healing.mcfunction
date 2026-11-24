## Add health
execute if entity @s[team=blue] run data modify storage player:actionbar health_bar append value {text:"3",font:"healthbar_health",shadow_color:16777215}
execute if entity @s[team=red] run data modify storage player:actionbar health_bar append value {text:"D",font:"healthbar_health",shadow_color:16777215}

function class:4/helper/actionbar/health/next