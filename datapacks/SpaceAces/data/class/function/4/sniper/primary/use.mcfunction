item replace entity @s hotbar.0 from block 15 -60 0 container.0
scoreboard players add @s[scores={shoot=1..}] shoot 1
execute if score @s SelectedItem matches 0 run scoreboard players set @s rightClick 0
execute if score @s shoot > class.sniper.primary.firerate Numbers run scoreboard players set @s shoot 0