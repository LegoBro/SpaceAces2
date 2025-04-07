## Pathfinder (pyro) Main Tick:

# Primary: Plasma Condenser
execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/pyro/primary/tick
execute if score @s reload matches 1.. run function class:4/pyro/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/pyro/primary/use

# 1st Ability: Fire Bomb
execute if score @s ability.1.cooldown matches ..0 run function class:4/pyro/fire_bomb/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/pyro/fire_bomb/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/pyro/toggle/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/pyro/toggle/cooldown

return 1