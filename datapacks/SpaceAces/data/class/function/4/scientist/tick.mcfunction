## Pathfinder (scientist) Main Tick:

# Primary: AsterRocket Launcher
execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/scientist/primary/tick
execute if score @s reload matches 1.. run function class:4/scientist/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/scientist/primary/use


# 1st Ability: Detonate
execute if score @s ability.1.cooldown matches ..0 run function class:4/scientist/detonator/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/scientist/detonator/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/scientist/toggle/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/scientist/toggle/cooldown



# Passive: Rocket Boots
execute unless predicate input:jump run effect clear @s slow_falling
execute unless predicate input:on_ground if predicate input:jump run function class:4/scientist/rocket_boots/run



return 1