## Pathfinder (rocketeer) Main Tick:

# Primary: AsterRocket Launcher
execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/rocketeer/primary/tick
execute if score @s reload matches 1.. run function class:4/rocketeer/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/rocketeer/primary/use


# 1st Ability: Detonate
execute if score @s ability.1.cooldown matches ..0 run function class:4/rocketeer/detonator/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/rocketeer/detonator/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/rocketeer/toggle/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/rocketeer/toggle/cooldown



# Passive: Bomb Voyage



return 1