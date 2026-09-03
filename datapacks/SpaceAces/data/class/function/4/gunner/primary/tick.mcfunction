## Primary Tick, no reload, no shoot
execute unless score @s ultimate.cooldown matches 1.. unless score @s shoot matches ..-17 run item replace entity @s hotbar.0 from block 15 -58 0 container.0
execute unless score @s ultimate.cooldown matches 1.. if score @s shoot matches ..-19 run item replace entity @s hotbar.0 from block 15 -58 0 container.1
execute if score @s ultimate.cooldown matches 1.. run item replace entity @s hotbar.0 from block 15 -58 0 container.2
execute if score @s[scores={SelectedItem=0}] rightClick matches 1.. run function class:4/gunner/primary/shoot
execute if score @s SelectedItem matches 0 run scoreboard players reset @s rightClick
