item replace entity @s hotbar.0 from block 15 -48 0 container.0
scoreboard players remove @s[scores={shoot=1..}] shoot 1
execute if score @s SelectedItem matches 0 run scoreboard players reset @s rightClick

scoreboard players set @s reload 0