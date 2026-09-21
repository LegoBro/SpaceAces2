# Blindness Effect
effect give @s[scores={blindness=40..}] blindness 2 0 true
effect give @s darkness 2 0 true
scoreboard players remove @s blindness 1
execute if score @s blindness matches 1.. run return 0
return 0