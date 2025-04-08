## Main
execute if score @s ability.1.cooldown matches 20.. unless score @s shoot matches 1.. run function class:4/shocksmith/secondary/tick
execute if score @s ability.1.cooldown matches 20.. if score @s shoot matches 1.. run function class:4/shocksmith/secondary/use