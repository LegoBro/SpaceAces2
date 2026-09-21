# Over Health
tag @s add maxless
scoreboard players remove @s over_heal 1
execute if score @s over_heal matches 1.. run return 0
tag @s remove maxless
scoreboard players reset @s over_heal

return 1