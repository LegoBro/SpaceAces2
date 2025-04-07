## Primary Tick, no reload, no shoot
item replace entity @s hotbar.0 from block 15 -51 0 container.0
execute if score @s[scores={shoot=0,SelectedItem=0}] rightClick matches 1.. run function class:4/pyro/primary/shoot
execute if score @s SelectedItem matches 0 run scoreboard players reset @s rightClick
