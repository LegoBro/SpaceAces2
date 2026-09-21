tag @s add resistive
scoreboard players remove @s resist 1
execute if score @s resist matches 1.. run return 0
tag @s remove resistive
scoreboard players reset @s resist

return 1