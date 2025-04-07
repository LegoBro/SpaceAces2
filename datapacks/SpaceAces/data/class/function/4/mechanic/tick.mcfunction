## Techanic (Mechanic) Main Tick:

# Primary: Double Chambered Scattergun

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/mechanic/primary/tick
execute if score @s reload matches 1.. run function class:4/mechanic/primary/reloading
execute if score @s shoot matches 1.. run function class:4/mechanic/primary/use


# 1st Ability: Turret
execute if score @s ability.1.cooldown matches ..0 run function class:4/mechanic/turret/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/mechanic/turret/cooldown

# 2nd Ability: Flash Grenade
execute if score @s ability.2.cooldown matches ..0 run function class:4/mechanic/deconstruct/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/mechanic/deconstruct/cooldown

return 1