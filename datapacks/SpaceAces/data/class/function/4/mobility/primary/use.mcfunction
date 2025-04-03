item replace entity @s hotbar.0 from block 15 -55 0 container.0
execute if score @s SelectedItem matches 0 run scoreboard players reset @s rightClick
scoreboard players add @s[scores={shoot=1..}] shoot 1

execute if score @s shoot matches 3 run function class:4/mobility/primary/shoot
execute if score @s shoot matches 4 run function class:4/mobility/primary/shoot

execute if score @s shoot > class.mobility.primary.firerate Numbers run scoreboard players set @s shoot 0
