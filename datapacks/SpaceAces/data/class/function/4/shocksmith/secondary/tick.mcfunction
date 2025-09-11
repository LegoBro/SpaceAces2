## Primary Tick, no reload, no shoot
item replace entity @s hotbar.1 from block 15 -48 0 container.1
execute if score @s[scores={shoot=0,SelectedItem=1}] rightClick matches 1.. run function class:4/shocksmith/secondary/shoot
execute if score @s SelectedItem matches 1 run scoreboard players reset @s rightClick
scoreboard players add @s ability.1.cooldown 1

execute if score @s ability.1.cooldown >= class.shocksmith.secondary.max_ammo Numbers run scoreboard players operation @s ability.1.cooldown = class.shocksmith.secondary.max_ammo Numbers

#execute class.shocksmith.secondary.max_ammo Numbers

## Display Charges
scoreboard players operation secondary Numbers = @s ability.1.cooldown
scoreboard players operation secondary Numbers -= class.shocksmith.secondary.cost Numbers

scoreboard players operation secondary Numbers /= class.shocksmith.secondary.cost Numbers

scoreboard players add secondary Numbers 1

function class:4/helper/actionbar/generic/secondary_multiple