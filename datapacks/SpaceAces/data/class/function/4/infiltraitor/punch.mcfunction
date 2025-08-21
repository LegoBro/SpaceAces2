## Invis is a lot of damage
execute unless score @s invis matches 1.. run scoreboard players operation class.melee.override Numbers = class.infiltraitor.melee.damage Numbers
execute if score @s invis matches 1.. run scoreboard players operation class.melee.override Numbers = class.infiltraitor.melee.invis_damage Numbers

function class:4/helper/punch
