## Main
execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/scientist/primary/tick
execute if score @s reload matches 1.. run function class:4/scientist/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/scientist/primary/use