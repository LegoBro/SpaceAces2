## Primary Tick, no reload, no shoot
item replace entity @s hotbar.0 from block 15 -59 0 container.1
execute if score @s[scores={shoot=0,SelectedItem=0}] rightClick matches 1.. run function class:4/bomber/sticky_bomb/shoot
execute if score @s SelectedItem matches 0 run scoreboard players reset @s rightClick
