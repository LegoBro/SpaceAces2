## Pathfinder (rocketeer) Main Tick:

# Primary: AsterRocket Launcher
execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/rocketeer/primary/tick
execute if score @s reload matches 1.. run function class:4/rocketeer/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/rocketeer/primary/use


# 1st Ability: Detonate
execute if score @s ability.1.cooldown matches ..0 run function class:4/rocketeer/piercing_dart/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/rocketeer/piercing_dart/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/rocketeer/rocket_wall/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/rocketeer/rocket_wall/cooldown



# Passive: Rocket Boots
execute unless predicate input:jump run effect clear @s slow_falling
execute unless predicate input:on_ground if predicate input:jump run function class:4/rocketeer/rocket_boots/run



return 1