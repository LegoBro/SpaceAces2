## Pathfinder (scientist) Main Tick:

# Primary: AsterRocket Launcher
execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/scientist/primary/tick
execute if score @s reload matches 1.. run function class:4/scientist/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/scientist/primary/use


# 1st Ability: ChemDispenser
execute if score @s ability.1.cooldown matches ..0 run function class:4/scientist/chem_dispenser/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/scientist/chem_dispenser/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/scientist/toggle/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/scientist/toggle/cooldown

# Ultimate Ability: Toxic Carpet
execute if score @s ultimate_charge >= class.scientist.ultimate.charge Numbers run function class:4/scientist/toxic_carpet/ready
execute unless score @s ultimate_charge >= class.scientist.ultimate.charge Numbers run function class:4/scientist/toxic_carpet/cooldown

## Melee
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch

return 1