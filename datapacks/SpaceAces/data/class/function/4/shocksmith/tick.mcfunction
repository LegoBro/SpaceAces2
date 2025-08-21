## Pathfinder (shocksmith) Main Tick:

# Primary: AsterRocket Launcher
execute unless score @s shoot matches 1.. run function class:4/shocksmith/primary/tick
execute if score @s shoot matches 1.. run function class:4/shocksmith/primary/use


# 1st Ability: Shock Grenade
execute unless score @s shoot matches 1.. if score @s ability.1.cooldown >= class.shocksmith.secondary.cost Numbers run function class:4/shocksmith/secondary/tick
execute if score @s shoot matches 1.. if score @s ability.1.cooldown >= class.shocksmith.secondary.cost Numbers run function class:4/shocksmith/secondary/use
execute unless score @s ability.1.cooldown >= class.shocksmith.secondary.cost Numbers run function class:4/shocksmith/secondary/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/shocksmith/stun/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/shocksmith/stun/cooldown

# Ultimate Ability: Fast Blast
execute if score @s ultimate_charge >= class.shocksmith.ultimate.charge Numbers run function class:4/shocksmith/shocksplosion/ready
execute unless score @s ultimate_charge >= class.shocksmith.ultimate.charge Numbers run function class:4/shocksmith/shocksplosion/cooldown

## Melee
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch


return 1