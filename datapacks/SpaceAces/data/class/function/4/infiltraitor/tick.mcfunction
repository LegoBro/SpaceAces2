## Shadow Op (infiltraitor) Main Tick:

# Primary: Surge Rifle

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/infiltraitor/primary/tick
execute if score @s reload matches 1.. run function class:4/infiltraitor/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/infiltraitor/primary/use


# 1st Ability: Plasma Grenade
execute if score @s ability.1.cooldown matches ..0 run function class:4/infiltraitor/cloak/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/infiltraitor/cloak/cooldown

# 2nd Ability: Burst Heal
execute if score @s ability.2.cooldown matches ..0 run function class:4/infiltraitor/fused_detonator/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/infiltraitor/fused_detonator/cooldown

# Ultimate Ability: Projected Clone
execute if score @s ultimate_charge >= class.infiltraitor.ultimate.charge Numbers run function class:4/infiltraitor/projected_clone/ready
execute unless score @s ultimate_charge >= class.infiltraitor.ultimate.charge Numbers run function class:4/infiltraitor/projected_clone/cooldown

## Melee - 2x damage if invis
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/infiltraitor/punch

return 1