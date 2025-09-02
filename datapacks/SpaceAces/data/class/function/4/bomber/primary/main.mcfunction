## Main
execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/bomber/primary/tick
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/bomber/primary/use
execute if score @s reload matches 1.. run function class:4/bomber/primary/reloading