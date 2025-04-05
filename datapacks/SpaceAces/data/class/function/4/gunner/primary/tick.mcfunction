## Primary Tick, no reload, no shoot
item replace entity @s hotbar.0 from block 15 -58 0 container.0
execute if score @s[scores={SelectedItem=0}] rightClick matches 1.. run function class:4/gunner/primary/shoot
execute if score @s SelectedItem matches 0 run scoreboard players reset @s rightClick
