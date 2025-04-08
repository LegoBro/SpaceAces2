## Primary Tick, no reload, no shoot
item replace entity @s hotbar.1 from block 15 -49 0 container.0
execute if score @s[scores={shoot=0,SelectedItem=1}] rightClick matches 1.. run function class:4/shocksmith/secondary/shoot
execute if score @s SelectedItem matches 1 run scoreboard players reset @s rightClick
