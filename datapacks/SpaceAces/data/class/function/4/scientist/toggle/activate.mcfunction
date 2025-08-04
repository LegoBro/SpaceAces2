
scoreboard players operation @s ability.2.cooldown = class.scientist.2.cooldown Numbers
scoreboard players reset @s rightClick

execute as @e[tag=chem_dispenser] if score @s id = #Class_Start id run tag @s add toggle.target
execute as @n[tag=chem_dispenser,tag=toggle.target] at @s run function class:4/scientist/chem_dispenser/toggle
tag @e[tag=chem_dispenser,tag=toggle_target] remove toggle_target

return 1