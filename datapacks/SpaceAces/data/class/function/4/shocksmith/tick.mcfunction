## Pathfinder (shocksmith) Main Tick:

# Primary: AsterRocket Launcher
execute unless score @s shoot matches 1.. run function class:4/shocksmith/primary/tick
execute if score @s shoot matches 1.. run function class:4/shocksmith/primary/use


# 1st Ability: Detonate
execute if score @s ability.1.cooldown matches ..0 run function class:4/shocksmith/detonator/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/shocksmith/detonator/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/shocksmith/toggle/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/shocksmith/toggle/cooldown




return 1