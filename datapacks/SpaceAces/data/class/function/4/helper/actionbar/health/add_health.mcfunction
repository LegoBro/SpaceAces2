## Add health
execute if entity @s[team=blue] run data modify storage player:actionbar health_bar append value {text:"1",font:"healthbar_health",shadow_color:16777215}
execute if entity @s[team=red] run data modify storage player:actionbar health_bar append value {text:"B",font:"healthbar_health",shadow_color:16777215}

function class:4/helper/actionbar/health/next