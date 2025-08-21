item replace entity @s hotbar.1 from block 15 -49 0 container.0
execute if score @s SelectedItem matches 1 run scoreboard players reset @s rightClick
scoreboard players add @s ability.1.cooldown 1