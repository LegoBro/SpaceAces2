## Main
execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function classes:4/bomber/sticky_bomb/tick
execute if score @s reload matches 1.. run function classes:4/bomber/primary/reloading
execute if score @s shoot matches 1.. run function classes:4/bomber/sticky_bomb/use