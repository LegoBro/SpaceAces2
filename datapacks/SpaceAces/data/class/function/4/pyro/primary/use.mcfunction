scoreboard players add @s[scores={shoot=1..}] shoot 1
item replace entity @s hotbar.0 from block 15 -59 0 container.0
execute if score @s SelectedItem matches 0 run scoreboard players reset @s rightClick
execute if score @s shoot > class.pyro.primary.firerate Numbers run scoreboard players set @s shoot 0