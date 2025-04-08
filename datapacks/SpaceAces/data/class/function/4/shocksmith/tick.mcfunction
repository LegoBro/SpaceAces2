## Pathfinder (shocksmith) Main Tick:

# Primary: AsterRocket Launcher
execute unless score @s shoot matches 1.. run function class:4/shocksmith/primary/tick
execute if score @s shoot matches 1.. run function class:4/shocksmith/primary/use


# 1st Ability: Detonate
execute unless score @s shoot matches 1.. if score @s ability.1.cooldown >= class.shocksmith.secondary.cost Numbers run function class:4/shocksmith/secondary/tick
execute if score @s shoot matches 1.. if score @s ability.1.cooldown >= class.shocksmith.secondary.cost Numbers run function class:4/shocksmith/secondary/use
execute unless score @s ability.1.cooldown >= class.shocksmith.secondary.cost Numbers run function class:4/shocksmith/secondary/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/shocksmith/stun/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/shocksmith/stun/cooldown




return 1